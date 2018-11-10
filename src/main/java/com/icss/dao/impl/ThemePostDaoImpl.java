package com.icss.dao.impl;

import com.icss.dao.ThemePostDao;
import com.icss.entity.MyInteger;
import com.icss.entity.ThemePost;
import com.icss.util.DBMethods;

import java.util.List;

public class ThemePostDaoImpl implements ThemePostDao {
    int pageSize = 20;
    @Override
    public List<ThemePost> findAllThemePosts() {
        String sql="select * from dnf_theme_post ";
        List<ThemePost> list = DBMethods.DBQueryList(sql, ThemePost.class);
        return list;
    }

    @Override
    public List<ThemePost> findThemePostByTheme(int themeId, int currentPage) {

        String sql="select * from dnf_theme_post where tmid=? and pcase=0 limit ?,?";
        List<ThemePost> list = DBMethods.DBQueryList(sql, ThemePost.class, themeId,(currentPage-1)*pageSize,pageSize);
        return list;
    }

    @Override
    public List<ThemePost> findThemePostByType(int themeId, int typeId, int currentPage) {
        String sql="select * from dnf_theme_post where tmid=? and tyid=? limit ?,?";
        List<ThemePost> list = DBMethods.DBQueryList(sql, ThemePost.class, themeId,typeId,(currentPage-1)*pageSize,pageSize);
        return list;
    }

    @Override
    public List<ThemePost> findThemePostByTime(int themeId, String time, int currentPage) {
        String sql="select * from dnf_theme_post where tmid=? and postingtime>? limit ?,?";
        List<ThemePost> list = DBMethods.DBQueryList(sql, ThemePost.class, themeId,time,(currentPage-1)*pageSize,pageSize);
        return list;
    }

    @Override
    public List<ThemePost> findThemePostByCaseLimitFive(int themeID) {
        String sql="select * from dnf_theme_post where tmid=? and pcase=2 limit 0,5";
        List<ThemePost> list = DBMethods.DBQueryList(sql, ThemePost.class, themeID);
        return list;
    }

    @Override
    public int findThemePostCountByThemeID(int themeID) {
        String sql = "select count(*) value from dnf_theme_post where tmid=? and pstatus=0";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, themeID);
        if (myInteger == null) {
            return 0;
        }
        return myInteger.getValue();
    }

    @Override
    public ThemePost findThemePostByID(int pid) {
        String sql = "select * from dnf_theme_post where pid = ?";
        ThemePost post = DBMethods.DBQueryOne(sql, ThemePost.class, pid);
        return post;
    }

    @Override
    public boolean AddThemePostPlike(int pid) {
        String sql = "UPDATE dnf_theme_post set plike = (SELECT a.plike from (select plike from dnf_theme_post where pid=?) a)+1 where pid = ?";
        int dml = DBMethods.DML(sql, pid,pid);
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean AddThemePostVisits(int pid) {
        String sql="UPDATE dnf_theme_post set visits = (SELECT a.visits from ((select visits from dnf_theme_post where pid=?)) a)+1 where pid = ?";
        int dml = DBMethods.DML(sql, pid,pid);
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public int findUserThemePostCount(int uid) {
        String sql = "select count(*) value from dnf_theme_post where uid = ?";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, uid);
        if (myInteger != null) {
            return  myInteger.getValue();
        }
        return 0;
    }

    @Override
    public int findThemePostVisits(int pid) {
        String sql = "select visits value from dnf_theme_post where pid = ?";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, pid);
        if (myInteger != null) {
            return myInteger.getValue();
        }
        return 0;
    }

    @Override
    public boolean addNewThemePost(ThemePost post) {
        String sql = "insert into dnf_theme_post values(null,?,?,?,?,now(),0,0,0,0,?)";
        int dml = DBMethods.DML(sql, post.getUid(), post.getTyid(), post.getTitle(), post.getContent(), post.getTmid());
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public ThemePost findTheLastThemePostByUid(int uid) {
        String sql = "select * from dnf_theme_post where uid = ? ORDER BY postingtime desc limit 0,1";
        ThemePost themePost = DBMethods.DBQueryOne(sql, ThemePost.class, uid);
        return themePost;
    }

    @Override
    public List<ThemePost> findAllThemePostByUid(int uid) {
        String sql = "select * from dnf_theme_post where uid = ? and pstatus = 0 ORDER BY postingtime desc";
        List<ThemePost> themePosts = DBMethods.DBQueryList(sql, ThemePost.class, uid);
        return themePosts;
    }
}
