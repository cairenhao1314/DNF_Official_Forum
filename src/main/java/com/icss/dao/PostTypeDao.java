package com.icss.dao;

public interface PostTypeDao {
    /**
     * 根据类型id查找类型名字
     */
    public String findTypeNameById(int id);
}
