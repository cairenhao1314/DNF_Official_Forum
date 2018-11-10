package com.icss.dao.impl;

import com.icss.dao.BadgeDao;
import com.icss.entity.Badge;
import com.icss.util.DBMethods;

import java.util.List;

public class BadgeDaoImpl implements BadgeDao {
    @Override
    public List<Badge> findBadgesByUid(int uid) {
        String sql = "select * from dnf_badge where bid in (select bid from dnf_user_badge where uid = ?)";
        List<Badge> badges = DBMethods.DBQueryList(sql, Badge.class, uid);
        return badges;
    }

    @Override
    public boolean insertIntoUserNewBadge(int bid, int uid) {
        String sql = "insert into dnf_user_badge(bid,uid) values(?,?)";
        int dml = DBMethods.DML(sql, bid, uid);
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean insertIntoDepotNewBadge(String badgeurl, String badgeinfo) {
        String sql = "insert into dnf_badge(badgeurl,badgeinfo) values(?,?)";
        int dml = DBMethods.DML(sql, badgeurl, badgeinfo);
        if (dml>0){
            return true;
        }
        return false;
    }

    @Override
    public List<Badge> findAllBadges() {
        String sql = "select * from dnf_badge ";
        List<Badge> badges = DBMethods.DBQueryList(sql, Badge.class);
        return badges;
    }
}
