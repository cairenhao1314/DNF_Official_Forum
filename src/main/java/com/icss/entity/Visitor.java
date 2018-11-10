package com.icss.entity;

/**
 * 访问量对象
 */
public class Visitor {
    private int vid;
    private int vsum;
    private String updtime;

    public int getVid() {
        return vid;
    }

    public void setVid(int vid) {
        this.vid = vid;
    }

    public int getVsum() {
        return vsum;
    }

    public void setVsum(int vsum) {
        this.vsum = vsum;
    }

    public String getUpdtime() {
        return updtime;
    }

    @Override
    public String toString() {
        return "Visitor{" +
                "vid=" + vid +
                ", vsum=" + vsum +
                ", updtime='" + updtime + '\'' +
                '}';
    }

    public void setUpdtime(String updtime) {
        this.updtime = updtime;
    }

    public Visitor(int vid, int vsum, String updtime) {
        this.vid = vid;
        this.vsum = vsum;
        this.updtime = updtime;
    }

    public Visitor() {
    }
}
