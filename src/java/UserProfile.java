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
 * @author MEGA
 */
@WebServlet(urlPatterns = {"/UserProfile"})
public class UserProfile extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  {
        //fetching the data from the UserRegistrationForm.jsp
        String uName = request.getParameter("uName");
        String uID = request.getParameter("uID");
        String uEmail = request.getParameter("uEmail");
        String uPass = request.getParameter("uPass");
        String uCountry = request.getParameter("uCountry");
        String uPhone = request.getParameter("uPhone");
        String uDept = request.getParameter("uDept");
        
        //sending the data to the RegisterDAO class to insert into the database
        UpdateDAO uDao = new UpdateDAO();
        if(uDao.Profile( uName ,uID ,uPass ,uCountry ,uPhone ,uDept ,uEmail  ) == true)
        {   
           HttpSession session = request.getSession();//creating a session
            session.setAttribute("uEmail", uEmail);
            response.sendRedirect("UserProfile.jsp"); 
        }else
        {
            response.sendRedirect("UserProfile.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
