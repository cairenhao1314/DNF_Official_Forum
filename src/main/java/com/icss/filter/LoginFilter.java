package com.icss.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) servletRequest).getSession();
        Object obj = session.getAttribute("user");
        if (obj != null) {
            //放行
            filterChain.doFilter(servletRequest,servletResponse);
        }else{
            System.out.println("当前用户没有登录...");
            //跳转至登录页面
            ((HttpServletResponse)servletResponse).sendRedirect("../login.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}
