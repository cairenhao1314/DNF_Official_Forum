package com.icss.service.impl;

import com.icss.dao.impl.BadgeDaoImpl;
import com.icss.entity.Badge;
import com.icss.service.BadgeService;

import java.util.List;

public class BadgeServiceImpl implements BadgeService {
    BadgeDaoImpl dao =new BadgeDaoImpl();
    @Override
    public List<Badge> getUserBadges(int uid) {
        return dao.findBadgesByUid(uid);
    }

    @Override
    public boolean getNewBadge(int bid, int uid) {
        return dao.insertIntoUserNewBadge(bid,uid);
    }

    @Override
    public boolean AddNewBadge(String badgeurl, String badgeinfo) {
        return dao.insertIntoDepotNewBadge(badgeurl,badgeinfo);
    }
}
