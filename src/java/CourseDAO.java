/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CourseDAO 
{
    public boolean userCourse(String cID, String cEmail ) 
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
            
            String query = "INSERT INTO enrolled_course (cID,cEmail) VALUES (?,?)";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, cID);
            pst.setString(2, cEmail);
            
            
            
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
