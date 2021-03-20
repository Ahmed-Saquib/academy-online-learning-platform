<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost/academy_management_project";%>
<%!String user = "root";%>
<%!String psw = "";%>
<% 
        String serial = request.getParameter("serial");
        String uID = request.getParameter("uID");
        String uName = request.getParameter("uName");
        String uEmail = request.getParameter("uEmail");
        String uPass = request.getParameter("uPass");
        String uCountry = request.getParameter("uCountry");
        String uPhone = request.getParameter("uPhone");
        String uDept = request.getParameter("uDept");
if(serial != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(serial);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);

String sql="UPDATE student_information SET uID=?,uEmail=?,uPass=?,uCountry=?,uPhone=?,uName=?  WHERE serial="+serial;
ps = con.prepareStatement(sql);
          
            ps.setString(1, uID);
            ps.setString(2, uEmail);
            ps.setString(3, uPass);
            ps.setString(4, uCountry);
            ps.setString(5, uPhone);
            ps.setString(6, uName);
            
            
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>