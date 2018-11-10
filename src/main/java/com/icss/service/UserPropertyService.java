package com.icss.service;

import com.icss.entity.UserProperty;

public interface UserPropertyService {
    /**
     * 通过用户id 查找出用户的财产资料
     */
    public UserProperty getUserPropertyByUid(int uid);
    /**
     * 更改用户的财产信息
     */
    public boolean updateUserProperty(UserProperty userProperty);
}
