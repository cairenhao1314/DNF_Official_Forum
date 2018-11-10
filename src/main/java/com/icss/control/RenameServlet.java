package com.icss.control;

import com.icss.service.UserService;
import com.icss.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RenameServlet",urlPatterns = { "/rename"})
public class RenameServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService service = new UserServiceImpl();
        String user = req.getParameter("user");
        boolean flag = false;
        String renameMsg = "对不起该昵称已经被人使用！";
        if(user!=null && !"".equals(user.trim()) ){
            flag = service.reNickName(user);
            if (flag){
                renameMsg = "该昵称可以使用！";
            }
        }
        PrintWriter writer = resp.getWriter();
        writer.write(renameMsg);
        writer.flush();
        writer.close();
    }
}
