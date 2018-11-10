package com.icss.service;

import com.icss.entity.Badge;

import java.util.List;

public interface BadgeService {
    /**
     * 通过用户ID 查找所有徽章集合
     */
    public List<Badge> getUserBadges(int uid);

    /**
     * 用户获取新徽章
     */
    public boolean getNewBadge(int bid, int uid);

    /**
     * 管理员上架新徽章
     */
    public boolean AddNewBadge(String badgeurl,String badgeinfo);
}
