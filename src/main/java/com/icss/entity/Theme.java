package com.icss.entity;

public class Theme {
    /**
     * 主题id
     */
    private int tmid;
    /**
     * 主题名称
     */
    private String tmname;

    /**
     * 主题logo
     */
    private String tmlogo;

    @Override
    public String toString() {
        return "Theme{" +
                "tmid=" + tmid +
                ", tmname='" + tmname + '\'' +
                ", tmlogo='" + tmlogo + '\'' +
                '}';
    }

    public String getTmlogo() {
        return tmlogo;
    }

    public void setTmlogo(String tmlogo) {
        this.tmlogo = tmlogo;
    }

    public Theme(int tmid, String tmname, String tmlogo) {
        this.tmid = tmid;
        this.tmname = tmname;
        this.tmlogo = tmlogo;
    }

    public int getTmid() {
        return tmid;
    }

    public void setTmid(int tmid) {
        this.tmid = tmid;
    }

    public String getTmname() {
        return tmname;
    }

    public void setTmname(String tmname) {
        this.tmname = tmname;
    }

    public Theme(int tmid, String tmname) {
        this.tmid = tmid;
        this.tmname = tmname;
    }

    public Theme() {
    }
}
