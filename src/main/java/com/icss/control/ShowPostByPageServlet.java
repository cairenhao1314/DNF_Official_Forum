package com.icss.control;

import com.icss.dao.ThemeDao;
import com.icss.dao.impl.PostTypeDaoImpl;
import com.icss.dao.impl.ReplyPostDaoImpl;
import com.icss.dao.impl.ThemeDaoImpl;
import com.icss.entity.Theme;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

@WebServlet(name = "ShowPostByPageServlet",urlPatterns = "/showThemePost")
public class ShowPostByPageServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        ThemePostServiceImpl service = new ThemePostServiceImpl();
        UserServiceImpl userService = new UserServiceImpl();
        ReplyPostServiceImpl replyPostService = new ReplyPostServiceImpl();
        PostTypeDaoImpl typeDao = new PostTypeDaoImpl();
        ThemeDaoImpl themeDao = new ThemeDaoImpl();

        int index = 1;
        int theme = 1;
        //总页码
        int totalPages = 1;

        String themeId = req.getParameter("themeId");
        if (themeId != null) {
            theme = Integer.parseInt(themeId);
        }

        //获得总页码
        totalPages=service.getThemeTotalPages(theme);

        String currentPage = req.getParameter("currentPage");
        if (currentPage != null) {
            index = Integer.parseInt(currentPage);
            index = index>totalPages?totalPages:index;
        }

        //获得当前版块 对象
        Theme themeBean = themeDao.findThemeByTmid(theme);



        //查询五条精品贴
        List<ThemePost> relist = service.showPostByCase(theme);


        //随机颜色数
        Random random = new Random();

        ArrayList<HashMap<String, Object>> toplist = new ArrayList<>();
        if (relist != null) {
            for (ThemePost post : relist) {
                HashMap<String, Object> topMap = new HashMap<>();
                User u = userService.findUserById(post.getUid());

                //查看帖子回复量
                int replyPostCount = replyPostService.ReplyPostCountOfThemePost(post.getPid());

                //对发帖时间进行处理
                String postingtime = post.getPostingtime();
                post.setPostingtime(postingtime.substring(0,10));
                int colornum = random.nextInt(1000);

                //页数
                int postPages=(int)Math.ceil(((double)(replyPostCount+1))/5);

                topMap.put("post",post);
                topMap.put("author",u);
                topMap.put("postPages",postPages);
                topMap.put("colornum",colornum);
                topMap.put("replyPostCount",replyPostCount);
                toplist.add(topMap);
            }
        }


        List<ThemePost> posts = service.showPostByCurrentPage(theme, index);
        ArrayList<HashMap<String,Object>> postList = new ArrayList<>();
        if(posts!=null){
            for (ThemePost post : posts) {
                HashMap<String, Object> map = new HashMap<>();
                User u = userService.findUserById(post.getUid());

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
                map.put("author",u);
                map.put("typeName",typeName);
                map.put("replyPostCount",replyPostCount);
                map.put("postPages",postPages);
                postList.add(map);
            }
        }

        req.setAttribute("themeBean",themeBean);
        req.setAttribute("toplist",toplist);
        req.setAttribute("postList",postList);
        req.setAttribute("totalPages",totalPages);
        req.setAttribute("currentPage",index);
        req.setAttribute("themeID",theme);
        req.getRequestDispatcher("page/posts.jsp").forward(req,resp);

    }
}
