package com.icss.service;

import com.icss.entity.ThemePost;

import java.util.List;

public interface ThemePostService {
    /**
     * 显示所有帖子
     */
    public List<ThemePost> showAllPost();

    /**
     * 显示当前页的普通帖子
     */
    public List<ThemePost> showPostByCurrentPage(int themeId,int currentPage);

    /**
     * 显示五条精品贴
     */
    public List<ThemePost> showPostByCase(int themeId);

    /**
     * 通过类型筛选 帖子
     */
    public List<ThemePost> showPostByCurrentPageAndType(int themeId,int typeId,int currentPage);

    /**
     * 通过时间筛选 帖子
     */
    public List<ThemePost> showPostByCurrentPageAndTime(int themeId,String time,int currentPage);

    /**
     * 返回总页数   默认每页帖子数量为20
     */
    public int getThemeTotalPages(int themeID);

    /**
     * 通过帖子ID 查找帖子
     */
    public ThemePost getThemePostByID(int pid);

    /**
     * 点赞数加一
     */
    public boolean AddThemePostPlike(int pid);

    /**
     * 浏览数加一
     */
    public boolean AddThemePostVisits(int pid);

    /**
     * 查看用户的主题帖数
     */
    public int getUserThemePostCount(int uid);

    /**
     * 查看浏览数
     */
    public int getThemePostVisits(int pid);

    /**
     * 发帖
     */
    public boolean postingNewThemePost(ThemePost post);

    /**
     * 获得用户最新的帖子
     */
    public ThemePost getLastThemePostByUid(int uid);

    /**
     * 通过用户ID 获得用户的所有主题帖
     */
    public List<ThemePost> getAllThemePostByUid(int uid);
}
