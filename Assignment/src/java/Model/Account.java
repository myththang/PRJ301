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
public class Account {
    String username, password;

    public Account() {
    }

    public Account(String account, String password) {
        this.username = account;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    Connection cnn;//ket noi
    Statement stm;//thuc thi cac cau lenh sql
    PreparedStatement pstm;
    ResultSet rs;//luu tru va xu li du lieu
    public boolean checkAccount() {
        try {
            cnn = (new DBContext()).connection;
            String strSelect = "select * from Student "
                    + "where username=? "
                    +"and Password=? " ;
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            pstm.setString(2, password);
            rs=pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return false;
    
    }

    public String getName() {
        try {
            cnn = (new DBContext()).connection;
            String strSelect = "select * from Student "
                    + "where username=? "
                    +"and Password=? " ;
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, username);
            pstm.setString(2, password);
            rs=pstm.executeQuery();
            while (rs.next()) {
                return rs.getString(4);
            }
        } catch (Exception e) {
            System.out.println("checkAccount:" + e.getMessage());
        }
        return "";
    
    }
    
}
