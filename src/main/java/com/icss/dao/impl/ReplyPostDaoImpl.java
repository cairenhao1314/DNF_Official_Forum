package com.icss.dao.impl;

import com.icss.dao.ReplyPostDao;
import com.icss.entity.MyInteger;
import com.icss.entity.ReplyPost;
import com.icss.entity.User;
import com.icss.util.DBMethods;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReplyPostDaoImpl implements ReplyPostDao {
    @Override
    public int findReplyPostCount(int themePostID) {
        String sql = "select count(*) value from dnf_reply_post where pid = ?";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, themePostID);
        if (myInteger == null) {
            return 0;
        }
        return myInteger.getValue();
    }

    @Override
    public List<Map<String, Object>> findReplyPostOfThemePost(int themePostID) {
        String sql= "select * from dnf_reply_post where pid=? and replystatus=0";
        List<ReplyPost> replyPosts = DBMethods.DBQueryList(sql, ReplyPost.class, themePostID);
        ArrayList<Map<String, Object>> list = new ArrayList<>();
        if (replyPosts != null) {
            for (ReplyPost replyPost : replyPosts) {
                HashMap<String, Object> map = new HashMap<>();
                int uid = replyPost.getUid();
                String userSql = "select * from dnf_user where uid=?";
                User replyuser = DBMethods.DBQueryOne(userSql, User.class, uid);
                map.put("replypost",replyPost);
                map.put("replyuser",replyuser);
                list.add(map);
            }
        }
        return list;
    }

    @Override
    public List<Map<String, Object>> findReplyPostOfAnotherReply(int replyPostID) {
        return null;
    }

    @Override
    public int findReplyPostCountByUid(int uid) {
        String sql = "select count(*) value from dnf_reply_post where uid=?";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, uid);
        if (myInteger != null) {
            return myInteger.getValue();
        }
        return 0;
    }

    @Override
    public ReplyPost findReplyPostByRpid(int rpid) {
        String sql ="select * from dnf_reply_post where rpid=? and replystatus=0";
        ReplyPost replyPost = DBMethods.DBQueryOne(sql, ReplyPost.class, rpid);
        return replyPost;
    }

    @Override
    public boolean insertReplyToThemePost(ReplyPost post) {
        String sql = "insert into dnf_reply_post values(null,?,0,?,now(),0,0,?)";
        int dml = DBMethods.DML(sql, post.getPid(), post.getContent(), post.getUid());
        if (dml >0) {
            return true;
        }
        return false;
    }
}
