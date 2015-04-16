/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alizzabeth
 */
public class Photo {

    int id = 0;//PK
    String path = null;
    String caption = null;
    String tag = null;
    String resolution = null;
    int categoryId = 0;//FK_Category

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    
    //method สำหรับเอาข้อมูลรูปภาพจาก database มาตั้งค่าใน object ของ photo
    private static Photo setPhoto(ResultSet result, Photo p) throws SQLException{
        p.setId(result.getInt(1));
        p.setPath(result.getString(2));
        p.setCaption(result.getString(3));
        p.setTag(result.getString(4));
        p.setResolution(result.getString(5));
        p.setCategoryId(result.getInt(6));
        return p;
    }
    
    //method สำหรับค้นหา/ดึงรูปภาพขึ้นมาจาก database
    public static List<Photo> searchPhoto(String tag, int kind) throws ClassNotFoundException, SQLException {
        List<Photo> photoList = null;

        try {
            // 2 บรรทัดล่างนี้ใช้เชื่อมต่อ database
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob", "kairoob", "bTLWzH");

            //ด้านล่างนี้คือการใช้งานฐานข้อมูล
            String sql = null;
            PreparedStatement pstm = null;

            //ถ้าเป็นการค้นหาแยกตามประเภทของรูปภาพ
            //ถ้า kind = 0 หมายถึงให้ค้นหาจากทุกประเภท
            if (kind != 0) {
                //limt 0,12 ในคำสั่ง sql หมายถึงเมื่อ query ข้อมูลมาแล้ว ให้ดึงข้อมูลออกมาตั้งแต่ record ที่ 0 ถึง 12 เท่านั้น
                sql = "select * from 'Photo' where 'category_id' = ? and 'tag' like ? limit 0,12;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            } else {
                sql = "select * from 'Photo' where 'tag' like ? limit 0,12;";
                pstm = con.prepareStatement(sql);
                pstm.setString(1, tag);
            }
            //เก็บผลลัพธ์จาก database ไว้ใน "result"
            ResultSet result = pstm.executeQuery();
            
            //เอา result มาเช็คว่ามีข้อมูลหรือไม่
            while (result.next()) {
                //ถ้าเป็นครั้งแรกของ loop ให้ new ArrayList
                if(photoList == null){
                    photoList = new ArrayList<Photo>();
                }
                Photo p = new Photo();
                //เอาข้อมูลที่ได้จาก database (ใน result) ไปยัดใส่ object ของ photo (ตัวแปร p) ด้วย method setPhoto
                //แล้วยัดใส่ ArrayList ชื่อ photoList
                photoList.add(Photo.setPhoto(result, p));
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return photoList;
    }
}