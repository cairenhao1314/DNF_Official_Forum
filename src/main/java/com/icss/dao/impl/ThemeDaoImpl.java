package com.icss.dao.impl;

import com.icss.dao.ThemeDao;
import com.icss.entity.Mystring;
import com.icss.entity.Theme;
import com.icss.util.DBMethods;

public class ThemeDaoImpl implements ThemeDao {

    @Override
    public String findTmnameByID(int tmid) {
        String sql = "select tmname value from dnf_theme where tmid = ?";
        Mystring mystring = DBMethods.DBQueryOne(sql, Mystring.class, tmid);
        if (mystring != null) {
            return mystring.getValue();
        }
        return null;
    }

    @Override
    public Theme findThemeByTmid(int tmid) {
        String  sql = "select * from dnf_theme where tmid = ?";
        Theme theme = DBMethods.DBQueryOne(sql, Theme.class, tmid);
        return theme;
    }
}
