package com.icss.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class DBMethods {
    /**
     *
     * @param sql
     * @param args
     * @return rs
     * 通过sql语句和参数  返回结果集
     */
    public static ResultSet Query(String sql,Object ...args) {
        //连接数据库
        Connection conn = JDBCUtil.getConnection();
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            //如果不为空 证明有参数
            if(args!=null){
                //赋值
                for (int i=0;i<args.length;i++) {
                    ps.setObject(i+1, args[i]);
                }
            }
            //执行 返回结果集
            ResultSet rs = ps.executeQuery();
            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }


    /**
     *  查询一个集合
     * @return
     *  要求 实体类 的属性与数据库表的字段一致
     */
    public static <T> List<T> DBQueryList(String sql,Class<T> cls,Object ... args) {
        //集合  用于装 结果
        List<T> list = new ArrayList<>();
        //连接数据库
        Connection conn = JDBCUtil.getConnection();
        //创建一个 preparestatement
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(sql);
            //设置条件
            if(args!=null){
                for (int i=0;i<args.length;i++) {
                    ps.setObject(i+1, args[i]);
                }
            }
            rs = ps.executeQuery();
            if (rs == null) {
                return null;
            }
            //反射获得 类的所有属性
            Field[] fields = cls.getDeclaredFields();
            T obj =null;
            while(rs.next()){
                //实例化一个对象
                obj=cls.newInstance();
                //对对象的属性进行循环遍历
                for (Field field : fields) {
                    //判断字段是否存在
                    try {
                        rs.findColumn(field.getName());
                    } catch (Exception e) {
                        continue;
                    }
                    //存在就往下执行

                    //获取属性的权限
                    boolean flag = field.isAccessible();
                    //获取属性修改的权限
                    field.setAccessible(true);
                    //获得当前属性的值
                    String value = rs.getString(field.getName());
                    //type
                    String elemType = field.getType().toString();
                    //对string 类型的 type 进行判断
                    //对obj 赋值
                    if (elemType.indexOf("boolean") != -1 || elemType.indexOf("Boolean") != -1) {
                        field.set(obj, Boolean.valueOf(value));
                    } else if (elemType.indexOf("byte") != -1 || elemType.indexOf("Byte") != -1) {
                        field.set(obj, Byte.valueOf(value));
                    } else if (elemType.indexOf("char") != -1 || elemType.indexOf("Character") != -1) {
                        field.set(obj, Character.valueOf(value.charAt(0)));
                    } else if (elemType.indexOf("double") != -1 || elemType.indexOf("Double") != -1) {
                        field.set(obj, Double.valueOf(value));
                    } else if (elemType.indexOf("float") != -1 || elemType.indexOf("Float") != -1) {
                        field.set(obj, Float.valueOf(value));
                    } else if (elemType.indexOf("int") != -1 || elemType.indexOf("Integer") != -1) {
                        field.set(obj, Integer.valueOf(value));
                    } else if (elemType.indexOf("long") != -1 || elemType.indexOf("Long") != -1) {
                        field.set(obj, Long.valueOf(value));
                    } else if (elemType.indexOf("short") != -1 || elemType.indexOf("Short") != -1) {
                        field.set(obj, Short.valueOf(value));
                    } else if (elemType.indexOf("date") != -1 || elemType.indexOf("Date") != -1) {
                        DateFormat df = new SimpleDateFormat("yy-MM-dd hh:mm:ss.SS");
                        field.set(obj, df.parse(value));
                    } else {
                        field.set(obj, (Object) value);
                    }
                    //恢复权限
                    field.setAccessible(flag);
                }
                list.add(obj);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    /**
     *  查询一个
     */
    public static <T> T DBQueryOne(String sql,Class<T> cls,Object ... args) {
        List<T> list = DBQueryList(sql, cls, args);
        if(list.size()==0 || list==null){
            return null;
        }
        return list.get(0);
    }


    /**
     * DML语句   返回受印象的行数    sql语句          条件参数
     */
    public static int  DML(String sql,Object ... args) {
        //连接数据库
        Connection conn = JDBCUtil.getConnection();
        //获取preparestatement
        PreparedStatement ps = null;
        try {
            ps = conn.prepareStatement(sql);
            if(args!=null){
                for (int i=0;i<args.length;i++) {
                    ps.setObject(i+1, args[i]);
                }
            }
            int num = ps.executeUpdate();
            if(num>0){
                System.out.println("DML语句成功！");
            }
            return num;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return 0;
    }
}
