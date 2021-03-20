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

public class RegisterDAO 
{
    public boolean userRegister(String uName, String uID, String uEmail, String uPass, String uCountry, String uPhone, String uDept) 
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/academy_management_project?","root","");
            
            String query = "INSERT INTO student_information (uName,uID,uEmail,uPass,uCountry,uPhone,uDept) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pst =  con.prepareStatement(query);
            pst.setString(1, uName);
            pst.setString(2, uID);
            pst.setString(3, uEmail);
            pst.setString(4, uPass);
            pst.setString(5, uCountry);
            pst.setString(6, uPhone);
            pst.setString(7, uDept);
            
            
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
