package com.icss.entity;

public class ReplyPost {

    /**
     * 帖子自身的id
     */
    private int rpid;
    /**
     *  帖子id
     */
    private int pid;
    /**
     * 用户id
     */
    private int uid;
    /**
     * 回帖内容
     */
    private String content;
    /**
     * 回帖时间
     */
    private String replytime;
    /**
     * 回帖点赞数
     */
    private int replylike;

    /**
     * 回复回复贴的那个Id
     */
    private int to_rpid;

    public int getTo_rpid() {
        return to_rpid;
    }

    public void setTo_rpid(int to_rpid) {
        this.to_rpid = to_rpid;
    }

    public ReplyPost(int rpid, int uid, String content, String replytime, int replylike, int to_rpid) {
        this.rpid = rpid;
        this.uid = uid;
        this.content = content;
        this.replytime = replytime;
        this.replylike = replylike;
        this.to_rpid = to_rpid;
    }

    public ReplyPost(int pid, int uid, String content) {
        this.pid = pid;
        this.uid = uid;
        this.content = content;
    }

    @Override
    public String toString() {
        return "ReplyPost{" +
                "rpid=" + rpid +
                ", pid=" + pid +
                ", uid=" + uid +
                ", content='" + content + '\'' +
                ", replytime='" + replytime + '\'' +
                ", replylike=" + replylike +
                ", to_rpid=" + to_rpid +
                '}';
    }

    public ReplyPost(int rpid, int pid, int uid, String content, String replytime, int replylike, int to_rpid) {
        this.rpid = rpid;
        this.pid = pid;
        this.uid = uid;
        this.content = content;
        this.replytime = replytime;
        this.replylike = replylike;
        this.to_rpid = to_rpid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getRpid() {
        return rpid;
    }

    public void setRpid(int rpid) {
        this.rpid = rpid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getReplytime() {
        return replytime;
    }

    public void setReplytime(String replytime) {
        this.replytime = replytime;
    }

    public int getReplylike() {
        return replylike;
    }

    public void setReplylike(int replylike) {
        this.replylike = replylike;
    }

    public ReplyPost(int rpid, int uid, String content, String replytime, int replylike) {
        this.rpid = rpid;
        this.uid = uid;
        this.content = content;
        this.replytime = replytime;
        this.replylike = replylike;
    }

    public ReplyPost() {
    }
}
