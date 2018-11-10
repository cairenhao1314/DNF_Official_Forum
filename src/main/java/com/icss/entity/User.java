package com.icss.entity;

/**
*  用户
* */
public class User {

    /**
     * 用户id
     */
    private int uid;
    /**
     * 用户昵称
     */
    private String nickname;
    /**
     * 用户密码
     */
    private String pwd;
    /**
     * 用户手机
     */
    private String phone;
    /**
     * 用户邮箱
     */
    private String email;
    /**
     * 用户状态 0代表正常 1代表封禁
     */
    private int ustatus;
    /**
     * 用户角色   0代表普通用户  1代表管理员  2代表版主
     */
    private int role;
    /**
     * 用户头像的url
     */
    private String headphoto;
    /**
     * 用户注册的时间
     */
    private String registertime;
    /**
     * 用户的等级
     */
    private int ulevel;
    /**
     * 用户的个性签名
     */
    private String signature;

    public User() {
    }

    public User(String nickname, String pwd, String phone) {
        this.nickname = nickname;
        this.pwd = pwd;
        this.phone = phone;
    }

    public User(int uid, String nickname, String pwd, String phone, String email, int ustatus, int role, String headphoto, String registertime, int ulevel, String signature) {
        this.uid = uid;
        this.nickname = nickname;
        this.pwd = pwd;
        this.phone = phone;
        this.email = email;
        this.ustatus = ustatus;
        this.role = role;
        this.headphoto = headphoto;
        this.registertime = registertime;
        this.ulevel = ulevel;
        this.signature = signature;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUstatus(int ustatus) {
        this.ustatus = ustatus;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public void setHeadphoto(String headphoto) {
        this.headphoto = headphoto;
    }

    public void setRegistertime(String registertime) {
        this.registertime = registertime;
    }

    public void setUlevel(int ulevel) {
        this.ulevel = ulevel;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public int getUid() {
        return uid;
    }

    public String getNickname() {
        return nickname;
    }

    public String getPwd() {
        return pwd;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public int getUstatus() {
        return ustatus;
    }

    public int getRole() {
        return role;
    }

    public String getHeadphoto() {
        return headphoto;
    }

    public String getRegistertime() {
        return registertime;
    }

    public int getUlevel() {
        return ulevel;
    }

    public String getSignature() {
        return signature;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", nickname='" + nickname + '\'' +
                ", pwd='" + pwd + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", ustatus=" + ustatus +
                ", role=" + role +
                ", headphoto='" + headphoto + '\'' +
                ", registertime='" + registertime + '\'' +
                ", ulevel=" + ulevel +
                ", signature='" + signature + '\'' +
                '}';
    }

}
