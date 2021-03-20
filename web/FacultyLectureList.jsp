<%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Http 1.1
            response.setHeader("Pragma", "no-cache");//Http 1.0
            response.setHeader("Expires", "0");//Proxies
            if (session.getAttribute("uEmail") == null) {
                response.sendRedirect("faculty_Login.jsp");
            }
             
          
 %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String dbName = "academy_management_project";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%> 
<!DOCTYPE html>
<!--

=========================================================
* Now UI Dashboard - v1.5.0
=========================================================

* Product Page: https://www.creative-tim.com/product/now-ui-dashboard
* Copyright 2019 Creative Tim (http://www.creative-tim.com)

* Designed by www.invisionapp.com Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
    
  <!-- CSS Just for demo purpose, don't include it in your project -->
</head>

<body class="Homepage">
  <div class="wrapper ">
    <div class="sidebar" data-color="red">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-mini">
        <!--  it's | -->
        </a>
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          Bux Lite
        </a>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="Faculty_Homepage.jsp">
              <i class="now-ui-icons design_app"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li>
            <a href="FacultyAllCourses.jsp">
              <i class="now-ui-icons education_atom"></i>
              <p>All Courses</p>
            </a> 
          </li>
          <!--
          <li>
            <a href="./map.html">
              <i class="now-ui-icons location_map-big"></i>
              <p>Maps</p>
            </a>
          </li>
          <li>
            <a href="./typography.html">
              <i class="now-ui-icons text_caps-small"></i>
              <p>Typography</p>
            </a>
          </li> 
          <li>
            <a href="MyCourseList.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>My Course List</p>
            </a>
          </li>
          -->
          <li>
            <a href="FacultyCourseList.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Faculty Course List</p>
            </a>
          </li>
          <li>
            <a href="CreateCourse.jsp">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Create Course</p>
            </a>
          </li>
          <li>
            <a href="FacultyGoToDiscussion.jsp">
              <i class="now-ui-icons ui-1_bell-53"></i>
              <p>Discussions</p>
            </a>
          </li>
          <li>
            <a href="FacultyProfile.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
           <li>
            <a href="Logout.jsp">
              <i class="now-ui-icons users_single-02"></i>
              <p>Logout</p>
            </a>
          </li>
        
          
        </ul>
      </div>
    </div>
    <div class="main-panel" id="main-panel">
   
        <!-- Navbar -->
    <div class="container">
        
    <h1 class="well">./LecturesList</h1>
	
            <div class="col-md-12 ">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title"></h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <form action="CreateLecture.jsp" method="POST">
                    <input type="hidden"  name = "cID" Value="<%=request.getParameter("lol")%>" >
                    <input type="hidden" name = "uEmail" value="<%=session.getAttribute("uEmail")%>">
                    <input type="submit" value="Add Lecture" name="submit" class ="btn btn-finish btn-fill btn-danger btn-wd"/> 
					
                    </form>
                  </div>
                </div>
              
                
                    
      
              <div class="panel-body">

                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th>No.</th>
                        <th> Name</th>
                        <th> Details</th>
                        
                        
                        
                    </tr> 
                  </thead>
                  
                 
<%
String data = request.getParameter("lol").toString();
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT  vID,vName,vDetails,vLink FROM video where cID = '"+data+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

%>
                         <tbody>
                          <tr>
                              
                            <td></td>
                            <td></td>  
                            <td></td>
                            <td></td>
                            <td><%=resultSet.getString("vID") %></td>
                            <td><%=resultSet.getString("vName") %></td>
                            
                            <td><button onclick="window.location.href='FacultyLectureVideo.jsp?lol=<%=resultSet.getString("vID") %>'" class="btn btn-finish btn-fill btn-danger btn-wd">Enter</button></td>
                            <!--<td align="center">
                              <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                              <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                            </td> -->
                            
                            
                          </tr>
                          </tbody>
<%  
}    
} catch (Exception e) {
e.printStackTrace();
}
%>
                      
                </table>
            
              </div>
              
              
            <!--  <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div> -->
            </div>

        </div>
      </div>
    </div>
</div>
</div>  

     
                               
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/now-ui-dashboard.min.js?v=1.5.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="assets/demo/demo.js"></script>
</body>

</html>
 