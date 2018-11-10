package com.icss.control;

import com.icss.dao.impl.ThemePostDaoImpl;
import com.icss.service.impl.ThemePostServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PlikeAddServlet",urlPatterns = "/plikeadd")
public class PlikeAddServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ThemePostServiceImpl service = new ThemePostServiceImpl();

        int pid = 1;
        String p = req.getParameter("pid");
        if (p != null) {
            pid = Integer.parseInt(p);
        }

        System.out.println("pid" + pid);

        String likeMsg = "点赞失败...";

        boolean flag = service.AddThemePostPlike(pid);
        if (flag){
            likeMsg = "点赞成功！";
        }

        System.out.println(likeMsg);

        PrintWriter writer = resp.getWriter();
        writer.print(likeMsg);
        writer.flush();
        writer.close();
    }
}
