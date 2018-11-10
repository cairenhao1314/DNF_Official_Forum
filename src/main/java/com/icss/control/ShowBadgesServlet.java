package com.icss.control;

import com.icss.dao.BadgeDao;
import com.icss.dao.impl.BadgeDaoImpl;
import com.icss.entity.Badge;
import com.icss.entity.User;
import com.icss.entity.UserProperty;
import com.icss.service.impl.UserPropertyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowBadgesServlet",urlPatterns = "/showbadge")
public class ShowBadgesServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BadgeDao dao = new BadgeDaoImpl();
        UserPropertyServiceImpl propertyService = new UserPropertyServiceImpl();

        List<Badge> allBadges = dao.findAllBadges();
        req.setAttribute("allBadges",allBadges);

        Object obj = req.getSession().getAttribute("user");
        User user = null;
        if (obj != null) {
            user = (User)obj;
            UserProperty userProperty = propertyService.getUserPropertyByUid(user.getUid());
            req.setAttribute("userProperty",userProperty);
        }

        req.getRequestDispatcher("page/badge.jsp").forward(req,resp);

    }
}
