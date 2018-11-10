package com.icss.dao.impl;

import com.icss.dao.PostTypeDao;
import com.icss.entity.Mystring;
import com.icss.util.DBMethods;

public class PostTypeDaoImpl implements PostTypeDao {
    @Override
    public String findTypeNameById(int id) {
        String sql = "select tname value from dnf_type where tyid= ?";
        Mystring name = DBMethods.DBQueryOne(sql, Mystring.class, id);
        if (name == null) {
            return null;
        }
        return name.getValue();
    }
}
