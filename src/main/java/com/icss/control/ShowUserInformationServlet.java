package com.icss.control;

import com.google.gson.Gson;
import com.icss.entity.UserInformation;
import com.icss.service.impl.UserInformationServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ShowUserInformationServlet",urlPatterns = "/showUserInfo")
public class ShowUserInformationServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserInformationServiceImpl userInformationService = new UserInformationServiceImpl();

        int uid = 0;
        //获取uid
        String userID = req.getParameter("uid");
        if (userID != null) {
            uid = Integer.parseInt(userID);
        }

        //获得用户详情对象
        UserInformation userInformation = userInformationService.getUserInformationByUid(uid);

        Gson gson = new Gson();
        String toJson = gson.toJson(userInformation);

        PrintWriter writer = resp.getWriter();
        writer.print(toJson);
        writer.flush();
        writer.close();
    }
}
