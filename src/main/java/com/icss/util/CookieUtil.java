package com.icss.util;

import javax.servlet.http.Cookie;

public class CookieUtil {
    public static Cookie getCookie(Cookie[] cookies,String name){
        for (Cookie cookie : cookies) {
            if(name.equals(cookie.getName())){
                return cookie;
            }
        }
        return null;
    }
}
