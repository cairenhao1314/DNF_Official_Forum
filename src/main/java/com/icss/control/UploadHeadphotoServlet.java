package com.icss.control;

import com.icss.entity.User;
import com.icss.service.impl.UserServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "UploadHeadphotoServlet",urlPatterns = "/uploadHeadphoto")
public class UploadHeadphotoServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserServiceImpl service = new UserServiceImpl();

        String filename = null;
        String updateMsg = "修改头像失败";

        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            // 设置上传文件的大小限制为5M
            factory.setSizeThreshold(5*1024 * 1024);

            List items = null;
            try {
                items = upload.parseRequest(req);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }

            Iterator iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                if (!item.isFormField()) {

                    // 根据时间戳创建头像文件
                    filename = System.currentTimeMillis() + ".jpg";
                    System.out.println(filename);

                    //获得session中的user
                    User user = (User)req.getSession().getAttribute("user");

                    /*getServletContext().getRealPath("/page/img/avatar");*/
                    String photoFolder = req.getSession().getServletContext().getRealPath("/page/img/avatar");
                    System.out.println("photoFolder"+photoFolder);
                    File folder = new File(photoFolder);
                    if(!folder.exists()){
                        System.out.println(photoFolder+"文件不存在！");
                        folder.mkdirs();
                    }

                    if (user != null) {
                        //不删除初始头像
                        if(!"ulogo.jpg".equals(user.getHeadphoto())){
                            File file=new File(photoFolder+"/"+user.getHeadphoto());
                            if(file.exists()&&file.isFile()) {
                                System.out.println("在服务删除用户之前的头像！");
                                file.delete();
                            }
                        }

                        //重新设置用户的头像
                        user.setHeadphoto(filename);
                        //修改用户的头像
                        boolean flag = service.updateUserAttr(user);
                        if (flag){
                            updateMsg = "修改成功！";
                        }
                    }
                    System.out.println("user"+user);

                    File f = new File(photoFolder, filename);
                    f.getParentFile().mkdirs();

                    // 通过item.getInputStream()获取浏览器上传的文件的输入流
                    InputStream is = item.getInputStream();

                    // 复制文件
                    FileOutputStream fos = new FileOutputStream(f);
                    byte b[] = new byte[1024 * 1024];
                    int length = 0;
                    while (-1 != (length = is.read(b))) {
                        fos.write(b, 0, length);
                    }
                    fos.close();
                } else {
                    System.out.println(item.getFieldName());
                    String value = item.getString();
                    value = new String(value.getBytes("ISO-8859-1"), "UTF-8");
                    System.out.println(value);
                }
            }

            PrintWriter writer = resp.getWriter();
            writer.write(updateMsg);
            writer.flush();
            writer.close();
           /* resp.sendRedirect("page/dnf_personCenter/personalCenter.jsp");*/

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
