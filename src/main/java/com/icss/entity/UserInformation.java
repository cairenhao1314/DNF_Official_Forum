package com.icss.entity;

public class UserInformation {
    /**
     * 用户详情id
     */
    private int uifid;
    /**
     * 用户id
     */
    private int uid;
    /**
     * 用户真实姓名
     */
    private String realname;
    /**
     * 用户身份证
     */
    private String IDcard;
    /**
     * 用户擅长职业
     */
    private String profession;

    /**
     * 安全问题
     */
    private String safeissue;

    /**
     * 问题答案
     */
    private String answer;

    public UserInformation(int uid, String realname, String IDcard, String profession, String safeissue, String answer) {
        this.uid = uid;
        this.realname = realname;
        this.IDcard = IDcard;
        this.profession = profession;
        this.safeissue = safeissue;
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "UserInformation{" +
                "uifid=" + uifid +
                ", uid=" + uid +
                ", realname='" + realname + '\'' +
                ", IDcard='" + IDcard + '\'' +
                ", profession='" + profession + '\'' +
                ", safeissue='" + safeissue + '\'' +
                ", answer='" + answer + '\'' +
                '}';
    }

    public String getSafeissue() {
        return safeissue;
    }

    public void setSafeissue(String safeissue) {
        this.safeissue = safeissue;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public UserInformation(int uifid, int uid, String realname, String IDcard, String profession, String safeissue, String answer) {
        this.uifid = uifid;
        this.uid = uid;
        this.realname = realname;
        this.IDcard = IDcard;
        this.profession = profession;
        this.safeissue = safeissue;
        this.answer = answer;
    }

    public int getUifid() {
        return uifid;
    }

    public void setUifid(int uifid) {
        this.uifid = uifid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getIDcard() {
        return IDcard;
    }

    public void setIDcard(String IDcard) {
        this.IDcard = IDcard;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public UserInformation(int uifid, int uid, String realname, String IDcard, String profession) {
        this.uifid = uifid;
        this.uid = uid;
        this.realname = realname;
        this.IDcard = IDcard;
        this.profession = profession;
    }

    public UserInformation() {
    }
}
