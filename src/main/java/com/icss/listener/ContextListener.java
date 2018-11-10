package com.icss.listener;

import com.icss.entity.Visitor;
import com.icss.util.CopyFilesUtil;
import com.icss.util.DBMethods;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.*;
import java.util.Properties;

public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext context = servletContextEvent.getServletContext();
        /**
         * 当前网页访问总数
         */
        int VisitorsCount = 0;
        Visitor visitor = DBMethods.DBQueryOne("select vsum from dnf_visitor ORDER BY vid DESC  LIMIT 0,1 ", Visitor.class);
        VisitorsCount=visitor.getVsum();
        //存放至context中
        context.setAttribute("VisitorsCount",VisitorsCount);
        //当前在线人数
        int VisitorOline = 0;
        context.setAttribute("VisitorOline",VisitorOline);


        /**
         * 同步项目中的头像文件
         */
        //本地头像的文件
        File file = new File("D:/DNF/HeadPhoto");
        if (!file.exists()){
            System.out.println("文件夹不存在，自动创建");
            file.mkdirs();
        }

        //服务器的头像文件
        String photoFolder = context.getRealPath("/page/img/avatar");

        try {
            CopyFilesUtil.copyDir("D:/DNF/HeadPhoto",photoFolder);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("本地文件同步服务器成功！");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        ServletContext context = servletContextEvent.getServletContext();
        Integer visitorsCount = (Integer)context.getAttribute("VisitorsCount");
        //将访问量存入数据库
        int dml = DBMethods.DML("insert into dnf_visitor(vid,vsum) values(null,?)", visitorsCount);
        if(dml>0){System.out.println("访问量存入数据库成功！");}


        /**
         * 关闭服务器 保存资源
         */
        //本地头像的文件
        File file = new File("D:/DNF/HeadPhoto");
        if (!file.exists()){
            System.out.println("文件夹不存在，自动创建");
            file.mkdirs();
        }

        //服务器的头像文件
        String photoFolder = context.getRealPath("/page/img/avatar");

        try {
            CopyFilesUtil.copyDir(photoFolder,"D:/DNF/HeadPhoto");
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("服务器同步本地文件");
    }
}
