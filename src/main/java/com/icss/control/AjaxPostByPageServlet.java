package com.icss.control;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.icss.dao.impl.PostTypeDaoImpl;
import com.icss.entity.ThemePost;
import com.icss.entity.User;
import com.icss.service.impl.ReplyPostServiceImpl;
import com.icss.service.impl.ThemePostServiceImpl;
import com.icss.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "AjaxPostByPageServlet",urlPatterns = "/ajaxShowPost")
public class AjaxPostByPageServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ThemePostServiceImpl service = new ThemePostServiceImpl();
        UserServiceImpl userService = new UserServiceImpl();
        ReplyPostServiceImpl replyPostService = new ReplyPostServiceImpl();
        PostTypeDaoImpl typeDao = new PostTypeDaoImpl();

        /*异步加载下一页数据*/
        int index = 1;
        int theme = 1;

        String currentPage = req.getParameter("currentPage");
        if (currentPage != null) {
           /* //加载下一页的数据*/
            index = Integer.parseInt(currentPage);
        }

        System.out.println("index:" + index);

        String themeID = req.getParameter("themeID");
        if (themeID != null) {
            System.out.println("dd");
            theme = Integer.parseInt(themeID);
        }
        System.out.println("theme:" + theme);

        List<ThemePost> posts = service.showPostByCurrentPage(theme, index);

        System.out.println("post"+posts);

        ArrayList<HashMap<String,Object>> postList = new ArrayList<>();
        if (posts != null) {
            for (ThemePost post : posts) {
                HashMap<String, Object> map = new HashMap<>();
                User user = userService.findUserById(post.getUid());

                //查看帖子回复量
                int replyPostCount = replyPostService.ReplyPostCountOfThemePost(post.getPid());

                //帖子类型
                int type = post.getTyid();
                String typeName = typeDao.findTypeNameById(type);

                //对发帖时间进行处理
                String postingtime = post.getPostingtime();
                post.setPostingtime(postingtime.substring(0,10));

                //页数
                int postPages=(int)Math.ceil(((double)(replyPostCount+1))/5);

                map.put("post",post);
                map.put("author",user);
                map.put("typeName",typeName);
                map.put("replyPostCount",replyPostCount);
                map.put("postPages",postPages);
                postList.add(map);
            }
        }

        req.setAttribute("currentPage",index);
        PrintWriter writer = resp.getWriter();
        Gson gson = new Gson();
        String toJson = gson.toJson(postList);

        writer.print(toJson);
        writer.flush();
        writer.close();
    }
}
