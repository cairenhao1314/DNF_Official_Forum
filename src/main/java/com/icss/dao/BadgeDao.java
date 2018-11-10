package com.icss.dao;

import com.icss.entity.Badge;

import java.util.List;

public interface BadgeDao {
    /**
     * 通过用户ID 查找所有徽章集合
     */
    public List<Badge> findBadgesByUid(int uid);

    /**
     * 用户获取新徽章
     */
    public boolean insertIntoUserNewBadge(int bid, int uid);

    /**
     * 管理员上架新徽章
     */
    public boolean insertIntoDepotNewBadge(String badgeurl,String badgeinfo);

    /**
     * 展示所有徽章
     */
    public List<Badge> findAllBadges();
}
