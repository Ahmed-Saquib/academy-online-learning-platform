<%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//Http 1.1
            response.setHeader("Pragma", "no-cache");//Http 1.0
            response.setHeader("Expires", "0");//Proxies
            if (session.getAttribute("uEmail") == null) {
                response.sendRedirect("faculty_Login.jsp");
            }
             
            
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
    <h1 class="well">./CreateCourse</h1>
	<div class="col-lg-12 well">
	<div class="row">
            
				<form action="CreateCourse" method="POST">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Course Name</label>
								<input type="text" name = "cName" placeholder="Object Oriented Programming" class="form-control">
							</div>
						<!--	<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control">
							</div>  -->
						</div>					
							
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Course ID</label>
                                                                <input type="text"  name = "cID" placeholder="CSE310" class="form-control" >
							</div>	
							<div class="col-sm-4 form-group">
								<label>Course Details</label>
								<input type="text" name = "cDetails" placeholder="Credit 03 | Individual project 01 | Duration 03 mo..." class="form-control">
							</div>	
							<div class="col-sm-4 form-group">
								<label>Faculty Initial</label>
								<input type="text" name = "fID" placeholder="TBA" class="form-control">
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Faculty Email</label>
								<input type="text" name = "fEmail" value="<%= session.getAttribute("uEmail") %>" class="form-control">
							<!--</div>		
							<div class="col-sm-6 form-group">
								<label>Company</label>
								<input type="text" placeholder="Enter Company Name Here.." class="form-control">
							</div>	-->
						</div>						
					<!--<div class="form-group">
						<label>Phone Number</label>
						<input type="text" name = "uPhone" value ="" class="form-control">
					</div>		
					<div class="form-group">
						<label>Country</label>
						<input type="text" name ="uCountry" value ="" class="form-control">
					</div>
                                        <div class="form-group">
							<label>Address</label>
							<textarea  placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
                                        </div>    
					<div class="form-group">
						<label>Website</label>
						<input type="text" placeholder="Enter Website Name Here.." class="form-control">
					</div> -->
                                        
                                                

					
                                        
					</div>
                                         <div class="form-group">
						 
						<input type="submit" value="Submit" name="submit" class ="btn btn-finish btn-fill btn-danger btn-wd"/> 
					</div>
   
				 

				</div>
                    </form>
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
 