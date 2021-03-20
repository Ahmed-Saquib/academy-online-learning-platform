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
@WebServlet("/FacultyDiscussion")
public class FacultyDiscussion extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //fetching the data from the UserRegistrationForm.jsp
        String cID = request.getParameter("cID");
        String uEmail = request.getParameter("uEmail");
        String uName = request.getParameter("uName");
        String dTopic = request.getParameter("dTopic");
        String dDetails = request.getParameter("dDetails");
        
        //sending the data to the RegisterDAO class to insert into the database
        FacultyDiscussionDAO dDao = new FacultyDiscussionDAO();
        if(dDao.Discussion(cID ,uEmail ,uName ,dTopic ,dDetails) == true)
        {
            HttpSession session = request.getSession();//creating a session
            session.setAttribute("uEmail", uEmail);
            response.sendRedirect("FacultyDiscussion.jsp?lol="+cID+"");
        }
        else
        {
            response.sendRedirect("Faculty_Homepage.jsp");
        }
    }
}
