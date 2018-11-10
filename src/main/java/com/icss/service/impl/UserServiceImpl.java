package com.icss.service.impl;

import com.icss.dao.UserDao;
import com.icss.dao.impl.UserDaoImpl;
import com.icss.entity.User;
import com.icss.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDao dao=new UserDaoImpl();

    @Override
    public boolean register(User u) {
        return  dao.insertOneUser(u);
    }

    @Override
    public User login(String name, String pwd) {
        return dao.findUserByNamePwd(name,pwd);
    }

    @Override
    public boolean updateUserAttr(User u) {
        return dao.updateUserByUser(u);
    }

    @Override
    public List<User> findAllUser() {
        return dao.findAllUser();
    }

    @Override
    public List<User> findAllUserWithPage(int pageNum, int pageSize) {
        return dao.findAllUserByLimit(pageNum,pageSize);
    }

    @Override
    public boolean isRegister(String phone) {
        return dao.isExistPhone(phone)?false:true;
    }

    @Override
    public boolean reNickName(String nickName) {
        return dao.isExistNickName(nickName)?false:true;
    }

    @Override
    public User findUserById(int uid) {
        return dao.findUserById(uid);
    }
}
