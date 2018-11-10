package com.icss.entity;

public class Mystring {
    private String value;

    @Override
    public String toString() {
        return "Mystring{" +
                "value='" + value + '\'' +
                '}';
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Mystring() {
    }

    public Mystring(String value) {
        this.value = value;
    }
}
