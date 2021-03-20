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
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
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
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <link href="course.css" rel="stylesheet" type="text/css"/>
  
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
      
 
    <section id="team" class="pb-5">
    <div class="container">
        <h5 class="section-title h1"><strong>Available Courses</strong></h5>
        <div class="row">
<%      

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT cName,cID,cDetails,fID FROM course";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>              
            <!-- Team member -->
            <div class="col-xs-12 col-sm-6 col-md-4">
                <div class="image-flip" >
                    <div class="mainflip flip-0">
                        <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <p><img class=" img-fluid" src="https://i.ibb.co/n8bRVWK/icon-tutoring-sat.png" alt="card image"></p>
                                    <h4 class="card-title"><%=resultSet.getString("cID") %></h4>
                                    <p class="card-text"><%=resultSet.getString("cName") %></p>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center mt-4">
                                    <h4 class="card-title"><%=resultSet.getString("cID") %></h4>
                                    <p class="card-text"><%=resultSet.getString("cDetails") %> Facutly <%=resultSet.getString("fID") %></p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                             
                                                
                                             <!--  <button onclick="window.location.href='CourseEnroll.jsp?lol=<%=resultSet.getString("cID") %>'" class="btn btn-finish btn-fill btn-danger btn-wd">View</button> 
                                                <a href="CourseEnroll.jsp?lol=CSE310"class="btn btn-finish btn-fill btn-danger btn-wd bg-dark text-white" >Enroll</a>-->
                                               
                                                 
                                        </li> 
                                    </ul>
                                     
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                                    
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
 %>
            <!-- ./Team member --> 
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