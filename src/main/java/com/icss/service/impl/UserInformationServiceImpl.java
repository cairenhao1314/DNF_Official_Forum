package com.icss.service.impl;

import com.icss.dao.UserInformatDao;
import com.icss.dao.impl.UserInformatDaoImpl;
import com.icss.entity.UserInformation;
import com.icss.service.UserInformationService;

public class UserInformationServiceImpl implements UserInformationService {
    UserInformatDao dao = new UserInformatDaoImpl();
    @Override
    public boolean setUserInformationData(UserInformation userinfo) {
        return dao.updateUserInformationData(userinfo);
    }

    @Override
    public UserInformation getUserInformationByUid(int uid) {
        return dao.findUserInformationByUid(uid);
    }
}
