package com.icss.control;

import com.icss.entity.User;
import com.icss.entity.UserInformation;
import com.icss.entity.UserProperty;
import com.icss.service.UserInformationService;
import com.icss.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SeeOtherInformationServlet",urlPatterns = "/seeother")
public class SeeOtherInformationServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserServiceImpl userService = new UserServiceImpl();
        UserInformationService userInformationService = new UserInformationServiceImpl();
        UserPropertyServiceImpl propertyService = new UserPropertyServiceImpl();
        ThemePostServiceImpl themePostService = new ThemePostServiceImpl();
        ReplyPostServiceImpl replyPostService = new ReplyPostServiceImpl();

        int uid = 0;
        String UID = req.getParameter("uid");
        if (UID != null) {
            uid = Integer.parseInt(UID);
        }

        User user = userService.findUserById(uid);
        UserInformation userInformation = userInformationService.getUserInformationByUid(uid);
        UserProperty userProperty = propertyService.getUserPropertyByUid(uid);
        int themePosts = themePostService.getUserThemePostCount(uid);
        int replyPosts = replyPostService.getUserReplyPostCount(uid);

        req.setAttribute("seeUser",user);
        req.setAttribute("seeUserInformation",userInformation);
        req.setAttribute("seeUserProperty",userProperty);
        req.setAttribute("themePosts",themePosts);
        req.setAttribute("replyPosts",replyPosts);

        req.getRequestDispatcher("page/anotherInformation.jsp").forward(req,resp);
    }
}
