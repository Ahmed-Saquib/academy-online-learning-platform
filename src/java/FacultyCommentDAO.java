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

public class FacultyCommentDAO {
  public boolean Comment(String dID, String uEmail, String uName, String cDetails) {
    try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
            
            String query = "INSERT INTO comment(dID,uEmail,uName,cDetails) VALUES(?,?,?,?)";
            PreparedStatement pst =  con.prepareStatement(query);
            
            pst.setString(1, dID);
            pst.setString(2, uEmail);
            pst.setString(3, uName);
            pst.setString(4, cDetails);
       
            
            
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
