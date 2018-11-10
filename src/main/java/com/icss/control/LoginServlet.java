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

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserServiceImpl service = new UserServiceImpl();

        HttpSession session = req.getSession();
        ServletContext context = session.getServletContext();

        String userName = req.getParameter("user");
        String pwd = req.getParameter("pwd");
        if(!"".equals(userName.trim())&&userName!=null && !"".equals(pwd.trim())&&pwd!=null){
            User user = service.login(userName, pwd);
            if(user!=null){
                //登录成功 放入session
                session.setAttribute("user",user);
                //跳转至主页
                resp.sendRedirect("page/index.jsp");
            }else{
                req.getSession().setAttribute("loginMsg","登录失败，账号或者密码错误！");
                resp.sendRedirect("page/login.jsp");
            }
        }
    }
}
