/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author myth
 */
public class ExamCode {
    String id, code;

    public ExamCode() {
    }

    public ExamCode(String id, String code) {
        this.id = id;
        this.code = code;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    Connection cnn;//ket noi
    Statement stm;//thuc thi cac cau lenh sql
    PreparedStatement pstm;
    ResultSet rs;//luu tru va xu li du lieu
    public boolean checkExamCode(String examCode) {
        try {
            cnn = (new DBContext()).connection;
            String strSelect = "select * from Examcode where name=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, examCode);
            rs=pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkCode:" + e.getMessage());
        }
        return false;
    
    }

    public int getExamId(String examCode) {
        try {
            cnn = (new DBContext()).connection;
            String strSelect = "select * from Examcode where name=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, examCode);
            rs=pstm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("checkCode:" + e.getMessage());
        }
        return 0;  
    }
    public String getDuration(String examCode) {
        try {
            cnn = (new DBContext()).connection;
            String strSelect = "select * from Examcode where name=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, examCode);
            rs=pstm.executeQuery();
            while (rs.next()) {
                return rs.getString(3);
            }
        } catch (Exception e) {
            System.out.println("checkCode:" + e.getMessage());
        }
        return "";  
    }
}
