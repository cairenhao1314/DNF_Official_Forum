package com.icss.control;

import com.icss.dao.BadgeDao;
import com.icss.dao.impl.BadgeDaoImpl;
import com.icss.entity.Badge;
import com.icss.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MyBadgesServlet",urlPatterns = "/mybadges")
public class MyBadgesServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BadgeDao dao = new BadgeDaoImpl();

        Object obj = req.getSession().getAttribute("user");
        User user = null;
        if (obj != null) {
            user = (User)obj;
            List<Badge> badges = dao.findBadgesByUid(user.getUid());
            System.out.println(badges);
            req.setAttribute("badges",badges);
        }

        req.getRequestDispatcher("page/mybadges.jsp").forward(req,resp);

    }
}
