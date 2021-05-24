<!--<%@page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>-->
<head>
<!--  <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
</head>
<html>
<title>Travel App Page</title>
<body>
	<nav class="navbar navbar-light" style="background-color: #6f42c1;">
		<a class="navbar-brand" href="#">Travel App</a>
		<!--  <a class="navbar-brand" class="float-right"href="#">Register</a>-->
		<button type="submit" class="float-right"
			class="btn btn-primary btn-sm">Register</button>
	</nav>
	<h5>Signup/Register</h5>
	<span style="color: blue;">${msg}</span> ​
	<picture>
	<source srcset="..." type="image/svg+xml">
	<img src="bootstrap/images/alexandre-godreau-188906.jpg" class="img-fluid" alt="..."></picture> 
	<picture>
	<source srcset="..." type="image/svg+xml">
	<img src="bootstrap/images/forrest-cavale-13484.jpg" class="img-fluid" alt="..."></picture>
	<form action="register.app" method="post">
		<div class="form-group">
			<label for="fullName">FullName:</label> <input type="text"
				class="form-control" id="fullName" name="fullName"
				placeholder="Enter your full name" required="required">
		</div>
		</br>
		<div class="container-fluid">
			<div class="w-50">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email"
					placeholder="Enter your email id" required="required">
			</div>
		</div>
		</br>
		<div class="container-fluid">
			<div class="w-50">
				<label for="date">Date of Birth: </label> <input type="date"
					class="form-control" id="dateOfBirth" name="dateOfBirth"
					placeholder="Enter your Date of Birth" required="required">
			</div>
		</div>
		</br>
		<div class="container-fluid">
			<div class="w-50">
				<label for="address">Address: </label> <input type="text"
					class="form-control" id="address" name="address"
					placeholder="Enter your address" required="required">
			</div>
		</div>
		</br>
		<div class="container-fluid">
			<div class="w-50">
				<label for="address">Contact Number: </label> <input type="number"
					class="form-control" id="contactNo" name="contactNo"
					placeholder="Enter your address" required="required">
			</div>
			</br>

		</div>
		</br>
		<div class="container-fluid">
			<div class="w-50">
				<label for="address">Password: </label> <input type="password"
					class="form-control" id="password" name="password"
					placeholder="Enter your password" required="required">
			</div>
		</div>
		</br>
		<div class="container-fluid">
			<div class="w-50">
				<label for="address">Confirm Password: </label> <input
					type="password" class="form-control" id="confirmPassword"
					name="confirmPassword"
					placeholder="Please enter your password again" required="required">
			</div>
		</div>
		</br>
		<button type="submit" class="btn btn-success btn-sm">Save</button>
		<button type="reset" class="btn btn-danger btn-sm">Reset</button>
		</br>
	</form>
	<footer style="background: #6f42c1;"
		class="page-footer font-small black">
		<div class="footer-copyright text-center py-3">© 2021 Copyright</div>
	</footer>
</body>
</html>
