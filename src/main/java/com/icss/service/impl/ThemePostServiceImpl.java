package com.icss.service.impl;

import com.icss.dao.ThemePostDao;
import com.icss.dao.impl.ThemePostDaoImpl;
import com.icss.entity.ThemePost;
import com.icss.service.ThemePostService;

import java.util.List;

public class ThemePostServiceImpl implements ThemePostService {
    ThemePostDao dao = new ThemePostDaoImpl();
    @Override
    public List<ThemePost> showAllPost() {
        return dao.findAllThemePosts();
    }

    @Override
    public List<ThemePost> showPostByCurrentPage(int themeId, int currentPage) {
        return dao.findThemePostByTheme(themeId,currentPage);
    }

    @Override
    public List<ThemePost> showPostByCase(int themeId) {
        return dao.findThemePostByCaseLimitFive(themeId);
    }

    @Override
    public List<ThemePost> showPostByCurrentPageAndType(int themeId, int typeId, int currentPage) {
        return dao.findThemePostByType(themeId,typeId,currentPage);
    }

    @Override
    public List<ThemePost> showPostByCurrentPageAndTime(int themeId, String time, int currentPage) {
        return dao.findThemePostByTime(themeId,time,currentPage);
    }

    @Override
    public int getThemeTotalPages(int themeID) {
        int count = dao.findThemePostCountByThemeID(themeID);
        int num=(int)Math.ceil((double)count/20);
        return num;
    }

    @Override
    public ThemePost getThemePostByID(int pid) {
        return dao.findThemePostByID(pid);
    }

    @Override
    public boolean AddThemePostPlike(int pid) {
        return dao.AddThemePostPlike(pid);
    }

    @Override
    public boolean AddThemePostVisits(int pid) {
        return dao.AddThemePostVisits(pid);
    }

    @Override
    public int getUserThemePostCount(int uid) {
        return dao.findUserThemePostCount(uid);
    }

    @Override
    public int getThemePostVisits(int pid) {
        return dao.findThemePostVisits(pid);
    }

    @Override
    public boolean postingNewThemePost(ThemePost post) {
        return dao.addNewThemePost(post);
    }

    @Override
    public ThemePost getLastThemePostByUid(int uid) {
        return dao.findTheLastThemePostByUid(uid);
    }

    @Override
    public List<ThemePost> getAllThemePostByUid(int uid) {
        return dao.findAllThemePostByUid(uid);
    }
}
