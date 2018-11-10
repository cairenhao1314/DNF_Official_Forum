package com.icss.dao;

import com.icss.entity.User;

import java.util.List;

public interface UserDao {
    /**
     * 查询用户是否存在
     */
    public User findUserByNamePwd(String name,String pwd);

    /**
     * 注册用户
     */
    public boolean insertOneUser(User u);

    /**
     * 修改用户  属性
     */
    public boolean updateUserByUser(User u);

    /**
     * 查询所有用户
     */
    public List<User> findAllUser();

    /**
     * 分页查询用户
     */
    public List<User> findAllUserByLimit(int pageNum,int pageSize);

    /**
     *  查看手机号是否存在
     */
    public boolean isExistPhone(String phone);

    /**
     *  查询用户昵称是否重复
     */
    public boolean isExistNickName(String nickName);

    /**
     * 通过用户ID 查询用户的所有信息
     */
    public User findUserById(int uid);
}
