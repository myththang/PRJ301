/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author myth
 */
public class Quiz {
    String id,question,a,b,c,d,eid;

    public Quiz() {
    }

    public Quiz(String id, String question, String a, String b, String c, String d, String eid) {
        this.id = id;
        this.question = question;
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.eid = eid;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    public String getD() {
        return d;
    }

    public void setD(String d) {
        this.d = d;
    }

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }
    
    Connection cnn;//ket noi
    Statement stm;//thuc thi cac cau lenh sql
    PreparedStatement pstm;
    ResultSet rs;//luu tru va xu li du lieu
    
    public ArrayList<Quiz> getListQuiz(int examId) {
        ArrayList<Quiz> list = new ArrayList<>();
        try {
            cnn = (new DBContext()).connection;
            String strSelect = "select * from Quiz where eid=?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setInt(1, 1);
            rs=pstm.executeQuery();
            while (rs.next()) {
                String id = rs.getString(1);
                String question = rs.getString(2);
                String a = rs.getString(3);
                String b = rs.getString(4);
                String c = rs.getString(5);
                String d = rs.getString(6);
                String eid = rs.getString(7);
                list.add(new Quiz(id, question, a, b, c, d, eid));
            }
        } catch (Exception e) {
            System.out.println("getListQuiz:" + e.getMessage());
        }
        return list;
    }
    
}
