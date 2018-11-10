package com.icss.entity;

public class UserProperty {
    /**
     * 用户财产ID
     */
    private int upid;
    /**
     * 用户id
     */
    private int uid;
    /**
     * 金币
     */
    private int goldcoin;
    /**
     * EXP
     */
    private int EXP;
    /**
     * 魅力值
     */
    private int charm;
    /**
     * 粉丝币
     */
    private int fanscoin;
    /**
     * 代币券
     */
    private int coupon;
    /**
     * 信用等级
     */
    private int credit;

    @Override
    public String toString() {
        return "UserProperty{" +
                "upid=" + upid +
                ", uid=" + uid +
                ", goldcoin=" + goldcoin +
                ", EXP=" + EXP +
                ", charm=" + charm +
                ", fanscoin=" + fanscoin +
                ", coupon=" + coupon +
                ", credit=" + credit +
                '}';
    }

    public int getUpid() {
        return upid;
    }

    public void setUpid(int upid) {
        this.upid = upid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getGoldcoin() {
        return goldcoin;
    }

    public void setGoldcoin(int goldcoin) {
        this.goldcoin = goldcoin;
    }

    public int getEXP() {
        return EXP;
    }

    public void setEXP(int EXP) {
        this.EXP = EXP;
    }

    public int getCharm() {
        return charm;
    }

    public void setCharm(int charm) {
        this.charm = charm;
    }

    public int getFanscoin() {
        return fanscoin;
    }

    public void setFanscoin(int fanscoin) {
        this.fanscoin = fanscoin;
    }

    public int getCoupon() {
        return coupon;
    }

    public void setCoupon(int coupon) {
        this.coupon = coupon;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public UserProperty(int upid, int uid, int goldcoin, int EXP, int charm, int fanscoin, int coupon, int credit) {
        this.upid = upid;
        this.uid = uid;
        this.goldcoin = goldcoin;
        this.EXP = EXP;
        this.charm = charm;
        this.fanscoin = fanscoin;
        this.coupon = coupon;
        this.credit = credit;
    }

    public UserProperty() {
    }
}
