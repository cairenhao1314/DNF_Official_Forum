package com.icss.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EncodingCharsetFilter implements Filter {
    String charset = null;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        charset = filterConfig.getInitParameter("charset");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        //重置 编码格式为 charset
        request.setCharacterEncoding(charset);
        response.setContentType("text/html;charset="+charset);
        response.setCharacterEncoding(charset);

        //放行
        filterChain.doFilter(request,response);

    }

    @Override
    public void destroy() {

    }
}
