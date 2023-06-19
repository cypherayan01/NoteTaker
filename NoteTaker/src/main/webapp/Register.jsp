<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="all_js_css.jsp" %>
   
	<!-- <!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="css/loginStyle.css">

<title>Note taker : Register</title>
</head>
<body >
<!-- <h1>This is a login page.</h1> -->
<!-- <div class="container text-center">
	<form style="width: px;">
		  <div class="form-group">
		    <label for="email">Email address</label>
		    <input type="email" class="form-control"
		     id="exampleInputEmail1" aria-describedby="emailHelp"
		      placeholder="Enter email" name="email">
		    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
		  </div>
		  <div class="form-group">
		    <label for="password">Password</label>
		    <input type="password" class="form-control" 
		    id="exampleInputPassword1" placeholder="Password" name="password">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Login</button>
	</form>
</div> -->
<div class="container d-flex justify-content-center ">
	<div class="d-flex justify-content-center h-100 mr-5">
		<div class="card">
			<div class="card-header">
				<h3>Sign Up</h3>
				
			</div>
			<div class="card-body">
				<form action="RegisterUserServlet" method="post">				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input name="username" type="text" class="form-control" placeholder="Enter username">						
					</div>
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input name="useremail" type="email" class="form-control" placeholder="Enter email">						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input name="userpassword" type="password" class="form-control" placeholder="password">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<div class="form-group">
						<input type="submit" value="Register" class="btn float-right login_btn">
					</div>
				</form>
			</div>
		</div>
	</div>
	
</div>

</body>
</html>