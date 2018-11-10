package com.icss.dao.impl;

import com.icss.dao.UserInformatDao;
import com.icss.entity.MyInteger;
import com.icss.entity.UserInformation;
import com.icss.util.DBMethods;

public class UserInformatDaoImpl implements UserInformatDao {
    @Override
    public boolean isExistUserInformation(int uid) {
        String sql = "select count(*) value from dnf_user_info where uid = ?";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, uid);
        if (myInteger != null) {
            if(myInteger.getValue()==0){
                return false;
            }else{
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean insertNewUserInformation(int uid) {
        String sql = "insert into dnf_user_info values(null,?,null,null,null,null,null)";
        int dml = DBMethods.DML(sql,uid);
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean updateUserInformationData(UserInformation userinfo) {
        String sql ="update dnf_user_info set realname = ?,IDcard = ?,profession=?,safeissue=?,answer=? where uid = ?";
        int dml = DBMethods.DML(sql, userinfo.getRealname(), userinfo.getIDcard(), userinfo.getProfession(), userinfo.getSafeissue(), userinfo.getAnswer(), userinfo.getUid());
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public UserInformation findUserInformationByUid(int uid) {
        //如果用户详情数据不存在
        if(!isExistUserInformation(uid)){
            //新建一条数据
            boolean flag = insertNewUserInformation(uid);
            System.out.println("当前表中没有此数据"+flag);
        }
        String sql ="select * from dnf_user_info where uid = ?";
        UserInformation userInformation = DBMethods.DBQueryOne(sql, UserInformation.class, uid);
        return userInformation;
    }
}
