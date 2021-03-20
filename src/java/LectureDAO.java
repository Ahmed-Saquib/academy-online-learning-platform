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

public class LectureDAO {
    public boolean Lecture(String cID, String vName, String vDetails, String vLink, String uEmail) {
    try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
            
            String query = "INSERT INTO video(cID,vName,vDetails,vLink,uEmail) VALUES(?,?,?,?,?)";
            PreparedStatement pst =  con.prepareStatement(query);
            
            pst.setString(1, cID);
            pst.setString(2, vName);
            pst.setString(3, vDetails);
            pst.setString(4, vLink);
            pst.setString(5, uEmail);
            
       
            
            
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
