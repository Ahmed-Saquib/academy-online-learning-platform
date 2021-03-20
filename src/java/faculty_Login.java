/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
@WebServlet("/faculty_Login")
public class faculty_Login extends HttpServlet 
{
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String uEmail = request.getParameter("uEmail");
        String uPass = request.getParameter("uPass");
         
        FacultyLoginDAO dao = new FacultyLoginDAO();
        
        if(dao.checker(uEmail,uPass) == true)
        {
            HttpSession session = request.getSession();
            session.setAttribute("uEmail", uEmail);
            response.sendRedirect("Faculty_Homepage.jsp");
            
            
        }
        else
        {
            response.sendRedirect("Login.jsp");
        }
    }
    
}
