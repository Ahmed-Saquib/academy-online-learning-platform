/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //fetching the data from the UserRegistrationForm.jsp
        String uName = request.getParameter("uName");
        String uID = request.getParameter("uID");
        String uEmail = request.getParameter("uEmail");
        String uPass = request.getParameter("uPass");
        String uCountry = request.getParameter("uCountry");
        String uPhone = request.getParameter("uPhone");
        String uDept = request.getParameter("uDept");
        
        //sending the data to the RegisterDAO class to insert into the database
        RegisterDAO rDao = new RegisterDAO();
        if(rDao.userRegister( uName ,uID ,uEmail ,uPass ,uCountry ,uPhone ,uDept ) == true)
        {
             
            response.sendRedirect("Login.jsp");
        }
        else
        {
            response.sendRedirect("Login.jsp");
        }
    }
}
