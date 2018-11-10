package com.icss.control;

import com.icss.entity.ReplyPost;
import com.icss.entity.ThemePost;
import com.icss.service.impl.ReplyPostServiceImpl;
import com.icss.service.impl.ThemePostServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ReplyPostServlet",urlPatterns = "/reply")
public class ReplyPostServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ReplyPostServiceImpl replyPostService = new ReplyPostServiceImpl();

        String postingMsg = "回帖失败！";

        int uid = 0;
        int pid = 0;
        String UID = req.getParameter("uid");
        String PID = req.getParameter("pid");
        String editor = req.getParameter("customized-buttonpane");

        if (PID != null) {
            pid = Integer.parseInt(PID);
        }
        if (UID != null) {
            uid = Integer.parseInt(UID);
        }
        ReplyPost replyPost = new ReplyPost(pid, uid, editor);

        boolean flag = replyPostService.replyThemePost(replyPost);
        if(flag){
            postingMsg = "发表成功！";
        }
        System.out.println(postingMsg);
        req.setAttribute("postingMsg",postingMsg);
        req.getRequestDispatcher("readPost?pid="+pid+"&uid="+uid).forward(req,resp);
    }
}
