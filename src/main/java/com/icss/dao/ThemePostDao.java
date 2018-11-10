package com.icss.dao;

import com.icss.entity.ThemePost;

import java.util.List;

public interface ThemePostDao {

    /**
     * 所有帖子 普通帖20条  精品置顶帖5条
     */


    /**
     * 查看所有帖子
     */
    public List<ThemePost> findAllThemePosts();

    /**
     * 通过帖子版块 筛选帖子 size20
     */
    public List<ThemePost> findThemePostByTheme(int themeId,int currentPage);

    /**
     * 通过帖子类型 筛选帖子 size20
     */
    public List<ThemePost> findThemePostByType(int themeId,int typeId,int currentPage);

    /**
     * 通过时间 筛选帖子 size20
     */
    public List<ThemePost> findThemePostByTime(int themeId,String time,int currentPage);

    /**
     * 查看板块 置顶帖 只有前5条
     */
    public List<ThemePost> findThemePostByCaseLimitFive(int themeID);

    /**
     * 当前版块  有多少主题帖
     */
    public int findThemePostCountByThemeID(int themeID);

    /**
     * 通过帖子ID 查找帖子
     */
    public ThemePost findThemePostByID(int pid);

    /**
     * 点赞数加一
     */
    public boolean AddThemePostPlike(int pid);

    /**
     * 浏览数加一
     */
    public boolean AddThemePostVisits(int pid);

    /**
     * 通过用户ID  查看他的主题帖数量
     */
    public int findUserThemePostCount(int uid);

    /**
     * 查看帖子浏览数
     */
    public int findThemePostVisits(int pid);

    /**
     * 发帖
     */
    public boolean addNewThemePost(ThemePost post);

    /**
     * 获得用户最新的发帖
     */
    public ThemePost findTheLastThemePostByUid(int uid);

    /**
     * 展示用户的所有主题帖
     */
    public  List<ThemePost> findAllThemePostByUid(int uid);

}
