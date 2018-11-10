package com.icss.service.impl;

import com.icss.dao.UserPropertyDao;
import com.icss.dao.impl.UserPropertyDaoImpl;
import com.icss.entity.UserProperty;
import com.icss.service.UserPropertyService;

public class UserPropertyServiceImpl implements UserPropertyService {
    UserPropertyDaoImpl dao = new UserPropertyDaoImpl();
    @Override
    public UserProperty getUserPropertyByUid(int uid) {
        return dao.findUserPropertyByUid(uid);
    }

    @Override
    public boolean updateUserProperty(UserProperty userProperty) {
        return dao.updateUserProperty(userProperty);
    }
}
