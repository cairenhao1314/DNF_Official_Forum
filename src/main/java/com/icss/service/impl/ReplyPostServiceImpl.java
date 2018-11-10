package com.icss.service.impl;

import com.icss.dao.ReplyPostDao;
import com.icss.dao.impl.ReplyPostDaoImpl;
import com.icss.entity.ReplyPost;
import com.icss.service.ReplyPostService;

import java.util.List;
import java.util.Map;

public class ReplyPostServiceImpl implements ReplyPostService {

    ReplyPostDao dao = new ReplyPostDaoImpl();
    @Override
    public List<Map<String, Object>> seeThemePostInformation(int themeID) {
        return dao.findReplyPostOfThemePost(themeID);
    }

    @Override
    public int ReplyPostCountOfThemePost(int themepostID) {
        return dao.findReplyPostCount(themepostID);
    }

    @Override
    public int getUserReplyPostCount(int uid) {
        return dao.findReplyPostCountByUid(uid);
    }

    @Override
    public ReplyPost getToReplyPost(int to_rpid) {
        return dao.findReplyPostByRpid(to_rpid);
    }

    @Override
    public boolean replyThemePost(ReplyPost post) {
        return dao.insertReplyToThemePost(post);
    }
}
