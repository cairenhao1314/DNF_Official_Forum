package com.icss.control;

import com.icss.entity.ThemePost;
import com.icss.service.impl.ThemePostServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PostingServlet",urlPatterns = "/posting")
public class PostingServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ThemePostServiceImpl postService = new ThemePostServiceImpl();
        String postingMsg = "发表失败！";

        int theme = 1;
        int uid = 0;
        int type = 0;
        String postName = req.getParameter("postName");
        String typeId = req.getParameter("typeId");
        String editor = req.getParameter("customized-buttonpane");
        String themeID = req.getParameter("themeID");
        String UID = req.getParameter("uid");

        if (themeID != null) {
            theme = Integer.parseInt(themeID);
        }
        if (UID != null) {
            uid = Integer.parseInt(UID);
        }
        if (typeId != null) {
            type = Integer.parseInt(typeId);
        }

        ThemePost themePost = new ThemePost(uid, type, theme, postName, editor);
        boolean flag = postService.postingNewThemePost(themePost);
        if(flag){
            postingMsg = "发表成功！";
            System.out.println(postingMsg);
            ThemePost lastThemePost = postService.getLastThemePostByUid(uid);
            req.getRequestDispatcher("readPost?pid="+lastThemePost.getPid()+"&uid="+uid).forward(req,resp);
        }else{
            req.setAttribute("postingMsg",postingMsg);
            req.getRequestDispatcher("page/posts.jsp").forward(req,resp);
        }




    }
}
