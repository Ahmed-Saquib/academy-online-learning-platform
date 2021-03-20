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

public class CreateCourseDAO {
 public boolean create(String cName,String cID,String cDetails,String fID,String fEmail){
     try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
          
         String query = "INSERT INTO course (cName, cID,cDetails,fID,fEmail) VALUES (?,?,?,?,?)";
         PreparedStatement pst =  con.prepareStatement(query);
         pst.setString(1, cName);
         pst.setString(2, cID);
         pst.setString(3, cDetails);
         pst.setString(4, fID);
         pst.setString(5, fEmail);
         
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

