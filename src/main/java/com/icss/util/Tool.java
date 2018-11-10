package com.icss.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * String to int
 */
public class Tool {
    /**
     *  返回-1 表示错误
     * @param targetString
     * @return
     */
    public static int toInt(String targetString){
        int parseInt = -1;
        try {
            parseInt = Integer.parseInt(targetString);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return parseInt;
    }

    /**
     *  接受HASHMAP<key,Value> map  返回 Value最大值的 key
     */
    public static String  findMaxKey(HashMap<String,String> map){
        Set<Map.Entry<String, String>> set = map.entrySet();
        int temp = -1;
        String key = null;
        for (Map.Entry<String, String> entry : set) {
            if (temp<Integer.parseInt(entry.getValue())){
                temp=Integer.parseInt(entry.getValue());
                key=entry.getKey();
            }
        }
        return key;
    }

    /**
     * 接受MAP<key,Value> map  返回 Value最大值的 key
     */
    public static String  findMaxKey(Map<String,Integer> map){
        Set<Map.Entry<String, Integer>> set = map.entrySet();
        int temp = -1;
        String key = null;
        for (Map.Entry<String, Integer> entry : set) {
            if (temp<entry.getValue()){
                temp=entry.getValue();
                key=entry.getKey();
            }
        }
        return key;
    }

}
