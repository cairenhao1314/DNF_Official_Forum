package com.icss.service;

import com.icss.entity.User;

import java.util.List;

public interface UserService {
    /**
     * 注册业务
     */
    public boolean register(User u);

    /**
     * 登录业务
     */
    public User login(String name,String pwd);

    /**
     * 修改 用户属性业务
     */
    public boolean updateUserAttr(User u);

    /**
     * 查看所有用户信息
     */
    public List<User> findAllUser();

    /**
     *  分页显示用户
     */
    public List<User> findAllUserWithPage(int pageNum,int pageSize);

    /**
     * 查看手机是否已经被注册
     */
    public boolean isRegister(String phone);

    /**
     * 查看昵称是否重复
     */
    public boolean reNickName(String nickName);

    /**
     * 通过用户id查找用户
     */
    public User findUserById(int uid);

}
