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

public class DiscussionDAO {
   public boolean Discuss(String cID, String uEmail, String uName, String dTopic, String dDetails) {
    try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
            
            String query = "INSERT INTO discussion (cID,uEmail,uName,dTopic,dDetails) VALUES (?,?,?,?,?)";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, cID);
            pst.setString(2, uEmail);
            pst.setString(3, uName);
            pst.setString(4, dTopic);
            pst.setString(5, dDetails);
            
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
