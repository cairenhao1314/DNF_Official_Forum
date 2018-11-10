package com.icss.entity;

public class MyInteger {
    private int value;

    @Override
    public String toString() {
        return "MyInteger{" +
                "value=" + value +
                '}';
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public MyInteger() {
    }

    public MyInteger(int value) {
        this.value = value;
    }
}
