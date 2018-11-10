package com.icss.control;

import com.icss.dao.ThemeDao;
import com.icss.dao.impl.ThemeDaoImpl;
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
import java.util.Map;

@WebServlet(name = "SeeOtherPostServlet",urlPatterns = "/seeotherpost")
public class SeeOtherPostServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ThemePostServiceImpl themePostService = new ThemePostServiceImpl();
        UserServiceImpl userService = new UserServiceImpl();
        ThemeDao dao = new ThemeDaoImpl();
        ReplyPostServiceImpl replyPostService = new ReplyPostServiceImpl();

        int uid =0;
        String UID = req.getParameter("uid");
        if (UID != null) {
            uid = Integer.parseInt(UID);
        }

        List<ThemePost> themePosts = themePostService.getAllThemePostByUid(uid);
        List<Map<String, Object>> list = new ArrayList<>();
        for (ThemePost themePost : themePosts) {
            HashMap<String, Object> map = new HashMap<>();
            String tmname = dao.findTmnameByID(themePost.getTmid());
            int count = replyPostService.ReplyPostCountOfThemePost(themePost.getPid());

            map.put("tmname",tmname);
            map.put("themepost",themePost);
            map.put("replycount",count);
            list.add(map);
        }
        User seeUser = userService.findUserById(uid);

        req.setAttribute("list",list);
        req.setAttribute("seeUser",seeUser);
        req.getRequestDispatcher("page/anotherThemepost.jsp").forward(req,resp);

    }
}
