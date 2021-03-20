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
@WebServlet("/CourseEnroll")
public class CourseEnroll extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //fetching the data from the UserRegistrationForm.jsp
        String cID = request.getParameter("cID");
        String cEmail = request.getParameter("cEmail");
       
        
        //sending the data to the RegisterDAO class to insert into the database
        CourseDAO cDao = new CourseDAO();
        if(cDao.userCourse( cID, cEmail ) == true)
        {
           response.sendRedirect("Homepage.jsp");
        }
        else
        {
            response.sendRedirect("Login.jsp");
        }
    }
}
