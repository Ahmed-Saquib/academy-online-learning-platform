/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MEGA
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UpdateDAO {
  public boolean Profile(String uName, String uID, String uPass, String uCountry, String uPhone, String uDept, String uEmail){
      try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
           
          String query = "UPDATE student_information SET uName=?,uID=?,uPass=?,uCountry=?,uPhone=?,uDept=? WHERE uEmail=?";
            PreparedStatement pst =  con.prepareStatement(query);
            
            pst.setString(1, uName);
            pst.setString(2, uID);
            pst.setString(3, uPass);
            pst.setString(4, uCountry);
            pst.setString(5, uPhone);
            pst.setString(6, uDept);
            pst.setString(7, uEmail);
            
            //pst.executeUpdate();
            if (pst.executeUpdate() > 0) 
            {
                return true;
            }
            pst.close();
            con.close();
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
        return false;
      }
  }   

