package com.icss.service;

import com.icss.entity.UserInformation;

public interface UserInformationService {
    /**
     * 修改用户详情的数据
     */
    public boolean setUserInformationData(UserInformation userinfo);

    /**
     * 通过用户id  uid查找对应的数据
     */
    public UserInformation getUserInformationByUid(int uid);
}
