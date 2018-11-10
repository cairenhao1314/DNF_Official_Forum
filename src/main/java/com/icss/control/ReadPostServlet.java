package com.icss.control;

import com.icss.dao.impl.PostTypeDaoImpl;
import com.icss.dao.impl.ThemeDaoImpl;
import com.icss.entity.*;
import com.icss.service.BadgeService;
import com.icss.service.ThemePostService;
import com.icss.service.impl.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ReadPostServlet",urlPatterns = "/readPost")
public class ReadPostServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ThemePostServiceImpl themePostService = new ThemePostServiceImpl();
        ReplyPostServiceImpl replyPostService = new ReplyPostServiceImpl();
        UserServiceImpl userService = new UserServiceImpl();
        BadgeServiceImpl badgeService = new BadgeServiceImpl();
        PostTypeDaoImpl typeDao = new PostTypeDaoImpl();
        ThemeDaoImpl themeDao = new ThemeDaoImpl();
        UserPropertyServiceImpl propertyService = new UserPropertyServiceImpl();


        int postID = 1;
        int userID = 1;

        //需要帖子ID 和发帖人id 帖子类型名称
        String pid = req.getParameter("pid");
        if (pid != null) {
            postID = Integer.parseInt(pid);
        }
        String uid = req.getParameter("uid");
        if (uid != null) {
            userID = Integer.parseInt(uid);
        }

        //通过帖子id 查找帖子
        ThemePost themePost = themePostService.getThemePostByID(postID);

        int realUid = themePost.getUid();
        if (userID != realUid){
            userID = realUid;
        }

        //通过用户id 查找用户
        User user = userService.findUserById(userID);
        //通过用户id 查找用户的徽章
        List<Badge> badges = badgeService.getUserBadges(userID);

        //当前页面的浏览数加一
        boolean visits = themePostService.AddThemePostVisits(postID);

        //对发帖时间进行处理
        String postingtime = themePost.getPostingtime();
        themePost.setPostingtime(postingtime.substring(0,19));

        HashMap<String, Object> themepostmaps = new HashMap<>();
        //获得类型名字
        String typeName = typeDao.findTypeNameById(themePost.getTyid());
        //获得主题名字
        String themename = themeDao.findTmnameByID(themePost.getTmid());
        //加载用户的主题帖数量
        int authorThemePosts = themePostService.getUserThemePostCount(userID);
        //加载用户的回帖数量
        int authorReplyPosts = replyPostService.getUserReplyPostCount(userID);
        //加载用户财产
        UserProperty authorProperty = propertyService.getUserPropertyByUid(userID);
        //主题帖的评论数
        int replyPostCount = replyPostService.ReplyPostCountOfThemePost(postID);
        //浏览数
        int themePostVisits = themePostService.getThemePostVisits(postID);

        themepostmaps.put("typename",typeName);
        themepostmaps.put("themePost",themePost);
        themepostmaps.put("user",user);
        themepostmaps.put("badges",badges);
        themepostmaps.put("themename",themename);
        themepostmaps.put("authorThemePosts",authorThemePosts);
        themepostmaps.put("authorReplyPosts",authorReplyPosts);
        themepostmaps.put("authorProperty",authorProperty);
        themepostmaps.put("replyPostCount",replyPostCount);
        themepostmaps.put("themePostVisits",themePostVisits);


        //通过帖子id  返回  replypost 回帖 replyuser 回帖人
        List<Map<String, Object>> maps = replyPostService.seeThemePostInformation(postID);
        if (maps != null) {
            for (Map<String, Object> map : maps) {
                ReplyPost replypost = (ReplyPost)map.get("replypost");

                //对发帖时间进行处理
                String replytime = replypost.getReplytime();
                replypost.setReplytime(replytime.substring(0,19));

                User replyuser = (User)map.get("replyuser");
                List<Badge> replyuserbadges = badgeService.getUserBadges(replyuser.getUid());
                UserProperty userProperty = propertyService.getUserPropertyByUid(replyuser.getUid());
                int userReplyPosts = replyPostService.getUserReplyPostCount(replyuser.getUid());
                int userThemePosts = themePostService.getUserThemePostCount(replyuser.getUid());

                //如果回复贴是回复的另外一个回复贴的话  找出那个回复贴的内容
                int to_rpid = replypost.getTo_rpid();
                ReplyPost to_replypost = null;

                if (to_rpid != 0) {
                    //获取这个id所对应的回复贴
                    to_replypost = replyPostService.getToReplyPost(to_rpid);
                    //对发帖时间进行处理
                    String toreplytime = to_replypost.getReplytime();
                    to_replypost.setReplytime(toreplytime.substring(0,19));
                }

                //被回帖人
                User to_user = null;
                if (to_replypost != null) {
                    //查看被回帖人
                    to_user = userService.findUserById(to_replypost.getUid());
                }

                //设置被回帖人
                map.put("to_user",to_user);
                //设置被回帖
                map.put("to_replypost",to_replypost);
                //重新设置修改后的用户信息
                map.put("replypost",replypost);
                //给map设置用户徽章集合
                map.put("userbadges",replyuserbadges);
                //用户财富
                map.put("userProperty",userProperty);
                //用户的主题数量
                map.put("userThemePosts",userThemePosts);
                //用户的回帖量
                map.put("userReplyPosts",userReplyPosts);
            }
        }

        req.setAttribute("replymaps",maps);
        req.setAttribute("themepostmaps",themepostmaps);
        req.getRequestDispatcher("page/postInformation.jsp").forward(req,resp);


    }
}
