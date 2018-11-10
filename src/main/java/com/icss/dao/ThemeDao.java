package com.icss.dao;

import com.icss.entity.Theme;

public interface ThemeDao {
    /**
     * 通过主题id 获得主题名
     */
    public String findTmnameByID(int tmid);

    /**
     * 通过主题id  获得主题对象
     */
    public Theme findThemeByTmid(int tmid);
}
