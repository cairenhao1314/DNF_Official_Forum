package com.icss.dao.impl;

import com.icss.dao.UserDao;
import com.icss.entity.User;
import com.icss.util.DBMethods;

import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public User findUserByNamePwd(String name, String pwd) {
        String sql="select * from dnf_user where nickname=? and pwd=?";
        User user = DBMethods.DBQueryOne(sql, User.class, name, pwd);
        return user;
    }

    @Override
    public boolean insertOneUser(User u) {
        String sql="insert into dnf_user(nickname,pwd,phone) values(?,?,?)";
        int num = DBMethods.DML(sql,
                u.getNickname(),
                u.getPwd(),
                u.getPhone());
        if(num>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean updateUserByUser(User u) {
        String sql="update  dnf_user set nickname=?,pwd=?,phone=?,email=?, ustatus=?,role=?,headphoto=?,registertime=?,ulevel=?,signature=?  where uid=?";
        int num = DBMethods.DML(sql,
                u.getNickname(),
                u.getPwd(),
                u.getPhone(),
                u.getEmail(),
                u.getUstatus(),
                u.getRole(),
                u.getHeadphoto(),
                u.getRegistertime(),
                u.getUlevel(),
                u.getSignature(),
                u.getUid());
        if(num>0){
            return true;
        }
        return false;
    }

    @Override
    public List<User> findAllUser() {
        String sql="select * from dnf_user";
        List<User> list = DBMethods.DBQueryList(sql, User.class);
        return list;
    }

    @Override
    public List<User> findAllUserByLimit(int pageNum, int pageSize) {
        String sql="select * from dnf_user limit ?,?";
        List<User> list = DBMethods.DBQueryList(sql, User.class,(pageNum-1)*pageSize,pageSize);
        return list;
    }

    @Override
    public boolean isExistPhone(String phone) {
        String sql="select  * from dnf_user where phone=?";
        User user = DBMethods.DBQueryOne(sql, User.class, phone);
        if (user != null) {
            return true;
        }
        return false;
    }

    @Override
    public boolean isExistNickName(String nickName) {
        String sql="select * from dnf_user where nickname=?";
        User user = DBMethods.DBQueryOne(sql, User.class, nickName);
        if (user != null) {
            return true;
        }
        return false;
    }

    @Override
    public User findUserById(int uid) {
        String sql="select * from dnf_user where uid=?";
        User user = DBMethods.DBQueryOne(sql, User.class, uid);
        return user;
    }
}
