package com.icss.entity;

public class ThemePost {
    /**
     * 帖子ID
     */
    private int pid;
    /**
     * 用户id
     */
    private int uid;
    /**
     * 主题id  主题
     */
    private int tyid;
    /**
     * 帖子类型id
     */
    private int tmid;
    /**
     * 帖子标题
     */
    private String title;
    /**
     * 帖子内容
     */
    private String content;
    /**
     * 发帖时间
     */
    private String postingtime;
    /**
     * 帖子状态 （0正常 1删帖）
     */
    private int pstatus;
    /**
     * 帖子情况
     * 0普通帖子
     * 1精品帖子
     * 2置顶帖子
     * 3热帖
     */
    private int pcase;
    /**
     * 帖子点赞数
     */
    private int plike;
    /**
     * 访问数
     */
    private int visits;

    public ThemePost(int uid, int tyid, int tmid, String title, String content, String postingtime, int pstatus, int pcase, int plike, int visits) {
        this.uid = uid;
        this.tyid = tyid;
        this.tmid = tmid;
        this.title = title;
        this.content = content;
        this.postingtime = postingtime;
        this.pstatus = pstatus;
        this.pcase = pcase;
        this.plike = plike;
        this.visits = visits;
    }

    public ThemePost() {
    }

    public ThemePost(int uid, int tyid, int tmid, String title, String content) {
        this.uid = uid;
        this.tyid = tyid;
        this.tmid = tmid;
        this.title = title;
        this.content = content;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public ThemePost(int pid, int uid, int tyid, int tmid, String title, String content, String postingtime, int pstatus, int pcase, int plike, int visits) {
        this.pid = pid;
        this.uid = uid;
        this.tyid = tyid;
        this.tmid = tmid;
        this.title = title;
        this.content = content;
        this.postingtime = postingtime;
        this.pstatus = pstatus;
        this.pcase = pcase;
        this.plike = plike;
        this.visits = visits;
    }

    @Override
    public String toString() {
        return "ThemePost{" +
                "pid=" + pid +
                ", uid=" + uid +
                ", tyid=" + tyid +
                ", tmid=" + tmid +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", postingtime='" + postingtime + '\'' +
                ", pstatus=" + pstatus +
                ", pcase=" + pcase +
                ", plike=" + plike +
                ", visits=" + visits +
                '}';
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getTyid() {
        return tyid;
    }

    public void setTyid(int tyid) {
        this.tyid = tyid;
    }

    public int getTmid() {
        return tmid;
    }

    public void setTmid(int tmid) {
        this.tmid = tmid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPostingtime() {
        return postingtime;
    }

    public void setPostingtime(String postingtime) {
        this.postingtime = postingtime;
    }

    public int getPstatus() {
        return pstatus;
    }

    public void setPstatus(int pstatus) {
        this.pstatus = pstatus;
    }

    public int getPcase() {
        return pcase;
    }

    public void setPcase(int pcase) {
        this.pcase = pcase;
    }

    public int getPlike() {
        return plike;
    }

    public void setPlike(int plike) {
        this.plike = plike;
    }

    public int getVisits() {
        return visits;
    }

    public void setVisits(int visits) {
        this.visits = visits;
    }
}
