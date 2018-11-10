package com.icss.service;

import com.icss.entity.ReplyPost;

import java.util.List;
import java.util.Map;

public interface ReplyPostService {
    /**
     * 用户查看帖子内容
     */
    public List<Map<String,Object>> seeThemePostInformation(int themeID);
    /**
     * 查看主题帖的回复量
     */
    public int ReplyPostCountOfThemePost(int themepostID);
    /**
     * 查看用户的回帖数量
     */
    public int getUserReplyPostCount(int uid);
    /**
     * 通过回复帖子id 查找相对应的回复贴对象
     */
    public ReplyPost getToReplyPost(int to_rpid);
    /**
     * 回复主题帖
     */
    public boolean replyThemePost(ReplyPost post);
}
