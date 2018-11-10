package com.icss.control;

import com.icss.entity.User;
import com.icss.service.UserService;
import com.icss.service.impl.UserServiceImpl;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "RegisterServlet",urlPatterns = { "/register"})
public class RegisterServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService service = new UserServiceImpl();
        String userName = req.getParameter("user");
        String pwd = req.getParameter("pwd");
        String phone = req.getParameter("phone");

        boolean flag = service.register(new User(userName, pwd, phone));

        if (flag){
            //跳转至登录界面
            resp.sendRedirect("page/login.jsp");
        }else{
            resp.sendRedirect("page/register.jsp");
        }

    }
}
