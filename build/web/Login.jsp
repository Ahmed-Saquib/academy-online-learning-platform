<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="login.css" rel="stylesheet" type="text/css"/>

<!------ Include the above in your HEAD tag ---------->

<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login Now</h2>
		    <form class="login-form" action="Login" method="POST">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase">Enter Email :</label>
    <input type="text" class="form-control" placeholder="abc@g.bracu.ac.bd" name="uEmail" required>
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1" class="text-uppercase">Enter Password :</label>
    <input type="password" class="form-control" placeholder="********" name="uPass" required>
  </div>
  
                        
    <div class="form-check">
        
    <button type="submit" class="btn btn-login float-right">Log in</button>
    </div>
  
</form>
<div class="copy-text">Made with <i class="fa fa-heart"></i> </div>
<button onclick="window.location.href='UserRegistrationForm.jsp'" class="btn btn-login float-center">Sign up</button>
<!--<button type="submit" href="UserRegistrationForm.jsp" class="btn btn-login float-center">Sign up</button> -->
 

		</div>
            
		<div class="col-md-8 banner-sec">
                </div>
	</div>
</div>
</section>