package com.icss.control;

import com.icss.service.UserService;
import com.icss.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PhoneExistServlet",urlPatterns = { "/phoneExist"})
public class PhoneExistServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserService service = new UserServiceImpl();
        String phone = req.getParameter("phone");
        boolean flag = service.isRegister(phone);
        String msg="号码不存在，可以注册！";
        if (!flag){
            msg="该手机号码已经存在！";
        }
        //将结果返回
        PrintWriter writer = resp.getWriter();
        writer.print(msg);
        writer.flush();
        writer.close();
    }
}
