package com.icss.entity;

public class Badge {
    /**
     * 徽章id
     */
    private int bid;
    /**
     * 徽章url
     */
    private String badgeurl;
    /**
     * 徽章简介
     */
    private String badgeinfo;

    @Override
    public String toString() {
        return "Badge{" +
                "bid=" + bid +
                ", badgeurl='" + badgeurl + '\'' +
                ", badgeinfo='" + badgeinfo + '\'' +
                '}';
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBadgeurl() {
        return badgeurl;
    }

    public void setBadgeurl(String badgeurl) {
        this.badgeurl = badgeurl;
    }

    public String getBadgeinfo() {
        return badgeinfo;
    }

    public void setBadgeinfo(String badgeinfo) {
        this.badgeinfo = badgeinfo;
    }

    public Badge(int bid, String badgeurl, String badgeinfo) {
        this.bid = bid;
        this.badgeurl = badgeurl;
        this.badgeinfo = badgeinfo;
    }

    public Badge() {
    }
}
