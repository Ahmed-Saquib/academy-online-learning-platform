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
@WebServlet("/FacultyComment")
public class FacultyComment extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //fetching the data from the UserRegistrationForm.jsp
        String dID = request.getParameter("dID");
        String uEmail = request.getParameter("uEmail");
        String uName = request.getParameter("uName");
        String cDetails = request.getParameter("cDetails");
       
        
        //sending the data to the RegisterDAO class to insert into the database
        FacultyCommentDAO rDao = new FacultyCommentDAO();
        if(rDao.Comment(dID,uEmail,uName,cDetails ) == true)
        {
            HttpSession session = request.getSession();//creating a session
           
            
            session.setAttribute("dID", dID);
            session.setAttribute("uEmail", uEmail);
        
  
            
            response.sendRedirect("FacultyComment2.jsp");
        }
        else
        {
            response.sendRedirect("Faculty_Homepage.jsp");
        }
    }
}

