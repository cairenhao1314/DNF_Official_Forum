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

@WebServlet(name = "UpdateUserInformationServlet",urlPatterns = "/updUserInfo")
public class UpdateUserInformationServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserInformationServiceImpl userInformationService = new UserInformationServiceImpl();

        String updateMsg = "保存失败...";

        int uid = 0;
        //获取uid
        String userID = req.getParameter("uid");
        String realname = req.getParameter("realname");
        String IDcard = req.getParameter("IDcard");
        String profession = req.getParameter("myprofession");
        String safeissue = req.getParameter("safeissue");
        String answer = req.getParameter("answer");
        if (userID != null) {
            uid = Integer.parseInt(userID);
        }
        System.out.println("uid"+uid + "myprofession" + profession);
        if (uid==0 ){
            System.out.println("uid不能为0");
        }else{
            UserInformation userInformation = new UserInformation(uid, realname, IDcard, profession, safeissue, answer);
            boolean flag = userInformationService.setUserInformationData(userInformation);
            if (flag){
                updateMsg = "保存成功！";
            }
        }

        PrintWriter writer = resp.getWriter();
        Gson gson = new Gson();
        String toJson = gson.toJson(updateMsg);
        writer.print(toJson);
        writer.flush();
        writer.close();
    }
}
