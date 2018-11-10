package com.icss.dao.impl;

import com.icss.dao.UserPropertyDao;
import com.icss.entity.MyInteger;
import com.icss.entity.UserProperty;
import com.icss.util.DBMethods;

public class UserPropertyDaoImpl implements UserPropertyDao {
    @Override
    public UserProperty findUserPropertyByUid(int uid) {
        //先判断是否存在 不存在会自动创建一个新的
        boolean flag = isExistUserPropertyByUid(uid);
        if (flag){
            String sql = "select * from dnf_user_property where uid = ?";
            UserProperty property = DBMethods.DBQueryOne(sql, UserProperty.class, uid);
            return property;
        }
        return null;
    }

    @Override
    public boolean isExistUserPropertyByUid(int uid) {
        String sql = "select count(*) value from dnf_user_property where uid = ?";
        MyInteger myInteger = DBMethods.DBQueryOne(sql, MyInteger.class, uid);
        if (myInteger != null) {
            if (myInteger.getValue()>0){
                return true;
            }else{
                boolean property = createNewUserPropertyByUid(uid);
                if (property){
                    System.out.println("创建一个新的用户财产对象...");
                    return true;
                }else{
                    System.out.println("创建财产对象失败...");
                    return false;
                }
            }
        }
        return false;
    }

    @Override
    public boolean createNewUserPropertyByUid(int uid) {
        String sql = "insert into dnf_user_property values(null,?,0,0,0,0,0,1)";
        int dml = DBMethods.DML(sql, uid);
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean updateUserProperty(UserProperty userProperty) {
        String sql = "update dnf_user_property set goldcoin=?,EXP=?,charm=?,fanscoin=?,coupon=?,credit=? where uid=?";
        int dml = DBMethods.DML(sql, userProperty.getGoldcoin(), userProperty.getEXP(), userProperty.getCharm(), userProperty.getFanscoin(), userProperty.getCoupon(), userProperty.getCredit(), userProperty.getUid());
        if (dml>0){
            return true;
        }
        return false;
    }
}
