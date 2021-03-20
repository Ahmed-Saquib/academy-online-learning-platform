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
  <link href="assets/demo/demo.css" rel="stylesheet" />
  <link href="homepage.css" rel="stylesheet" type="text/css"/>
 
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
      <%
String data = session.getAttribute("dID").toString();
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT  uName,dTopic,dDetails FROM discussion where dID = '"+data+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){

%> 
       <div class="container-fluid">
    <h1 class="well">./<%=resultSet.getString("dTopic")%></h1>
	</div>
<div class="container-fluid ">
<div class= "col-md-12 well" >
<div class="row">
   
<form action="">
					<div class="col-sm-12">
											
						<div>
							<div>
								
								<img class="" src="https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png" width="30" height="30" alt="...">&nbsp;&nbsp;<%=resultSet.getString("uName")%>
								
							</div>
							<div>
                                                                <h2 class="small text-secondary m-0 mt-1"></h2>
							</div>
							
							 
						</div>
						<!-- post body -->
						<div class="">
							<p class="my-2">
								<%=resultSet.getString("dDetails")%>
							</p>
						</div>	
						     

					
                                        
					</div>
   
</form> 			
<%  
}    
} catch (Exception e) {
e.printStackTrace();
}
%>								

</div>
</div>
</div>       
<%   
try{
    
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql1 ="SELECT * FROM comment where dID = '"+data+"'";

resultSet = statement.executeQuery(sql1);
while(resultSet.next()){
%>
<div class="container-fluid ">
<div class= "col-md-12 well" >
<div class="row">
<form action="" method="">
					<div class="col-sm-12">
											
						<div>
							<div>
								
								<img class="" src="https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png" width="30" height="30" alt="...">&nbsp;&nbsp;<%=resultSet.getString("uName")%> 
								
							</div>
							<div>
                                                              <h2 class="small text-secondary m-0 mt-1"></h2>  
							</div>
							
							 
						</div>
						<!-- post body -->
						<div class="">
							<p class="my-2">
								<%=resultSet.getString("cDetails")%>
							</p>
						</div>	
						<div class="row">
						</div>
                                                      

					
                                        
					</div>
   
				</form> 			
								

</div>
</div>
</div>          
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>                               
<div class="container-fluid">
<div class= "col-md-12 well" >
<div class="row">
<%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT uEmail,uName FROM comment where dID = '"+data+"' ORDER BY cID DESC" ;

resultSet = statement.executeQuery(sql);
if(resultSet.next()){

%>
<form action="FacultyComment" method="POST">
					<div class="col-sm-12">
											
							
						<div class="row">
							
                                                       
							<div class="form-group">
								<label>&nbsp;&nbsp;Comment</label>
								
							</div>
                                                   
                                                        <div class="form-group">                           
							<textarea type="text"  name = "cDetails"  class="form-control"></textarea>
							</div>
                                                        <div class="form-group">
								<input type="hidden"  name = "dID"  value="<%=data%>">
                                                                <input type="hidden"  name = "uName" value ="<%=resultSet.getString("uName") %>" >
                                                                <input type="hidden"  name = "uEmail" value ="<%=resultSet.getString("uEmail") %>">
							</div>
									
						</div>
<%  
}    
} catch (Exception e) {
e.printStackTrace();
}
%>											
						
					
                                           
					
                                        <input type="submit" value="comment" name="submit" class ="btn btn-finish btn-fill btn-danger btn-wd"/>         

					
                                        
					</div>
</form> 			
								

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