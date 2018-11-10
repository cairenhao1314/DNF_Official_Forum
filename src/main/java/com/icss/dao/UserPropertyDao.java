package com.icss.dao;

import com.icss.entity.UserProperty;

public interface UserPropertyDao {
    /**
     * 通过用户id 查找出用户的财产资料
     */
    public UserProperty findUserPropertyByUid(int uid);

    /**
     * 通过用户id 查看是否存在
     */
    public boolean isExistUserPropertyByUid(int uid);

    /**
     * 创建一个初始的用户财产对象
     */
    public boolean createNewUserPropertyByUid(int uid);

    /**
     * 更改用户的财产信息
     */
    public boolean updateUserProperty(UserProperty userProperty);
}
