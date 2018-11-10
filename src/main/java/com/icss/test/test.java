package com.icss.test;

import com.icss.service.impl.ThemePostServiceImpl;
import com.icss.service.impl.UserServiceImpl;
import com.icss.util.CopyFilesUtil;

import java.io.IOException;

public class test {

    static ThemePostServiceImpl service = new ThemePostServiceImpl();
    static UserServiceImpl userService = new UserServiceImpl();
    public static void main(String[] args) {
        try {
            CopyFilesUtil.copyDir("D:\\DNF\\HeadPhoto","D:\\test");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
