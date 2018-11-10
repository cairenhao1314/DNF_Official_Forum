package com.icss.dao;

import com.icss.entity.UserInformation;

public interface UserInformatDao {
    /**
     * 查看用户详情数据是否存在
     */
    public boolean isExistUserInformation(int uid);

    /**
     * 通过用户id 新建一个用户详情数据
     */
    public boolean insertNewUserInformation(int uid);

    /**
     * 修改用户详情的数据
     */
    public boolean updateUserInformationData(UserInformation userinfo);

    /**
     * 通过用户id  uid查找对应的数据
     */
    public UserInformation findUserInformationByUid(int uid);
}
