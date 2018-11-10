package com.icss.dao;

import com.icss.entity.ReplyPost;

import java.util.List;
import java.util.Map;

public interface ReplyPostDao {
    /**
     * 根据帖子ID查找回复量
     */
    public int findReplyPostCount( int themePostID);
    /**
     * 根据帖子ID 查找回复贴   Map 中装 回帖数据和相对应的用户数据
     */
    public List<Map<String,Object>> findReplyPostOfThemePost(int themePostID);
    /**
     * 根据帖子ID+回帖ID 查找相应的数据
     */
    public List<Map<String,Object>> findReplyPostOfAnotherReply(int replyPostID);
    /**
     * 根据用户ID 查看他的回帖数量
     */
    public int findReplyPostCountByUid(int uid);
    /**
     * 根据rpid  查找回复贴的详情
     */
    public ReplyPost findReplyPostByRpid(int rpid);
    /**
     * 插入一条回复 （主题帖回复）
     */
    public boolean insertReplyToThemePost(ReplyPost post);

}
