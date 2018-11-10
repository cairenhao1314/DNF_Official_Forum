package com.icss.listener;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {


    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        //会话创建 在线人数加一
        ServletContext context = httpSessionEvent.getSession().getServletContext();
        //获得当前在线人数
        Integer visitorOline = (Integer)context.getAttribute("VisitorOline");
        //当前人数加一
        context.setAttribute("VisitorOline",visitorOline+1);

        //历史访问量加一
        Integer visitorsCount = (Integer)context.getAttribute("VisitorsCount");
        context.setAttribute("VisitorsCount",visitorsCount+1);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        //会话创建 在线人数 -1
        ServletContext context = httpSessionEvent.getSession().getServletContext();
        //获得当前在线人数
        Integer visitorOline = (Integer)context.getAttribute("VisitorOline");
        //当前人数减一
        context.setAttribute("VisitorOline",visitorOline-1);

    }
}
