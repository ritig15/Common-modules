<%@page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="bootstrap/images/tt_logo.jpg"
	type="image/x-icon">
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
<title>Travel Triangle Signup Page</title>
<body>
	<nav class="navbar navbar-light" style="background-color: #000;">
		<a class="navbar-brand" href="#" style="color: white">Travel
			Triangle</a>
		<button type="submit" class="float-right"
			class="btn btn-primary btn-sm">Register</button>
	</nav>
	<!-- <section class="header1 cid-qwYE4H2V83 mbr-parallax-background"
		id="header1-4" data-rv-view="968">
		<div class="container" class="float-left">
			<div class="row justify-content-md-center">
				<div class="mbr-white col-md-10">
					<h4
						class="mbr-section-title align-center mbr-bold pb-3 mbr-fonts-style display-1">Welcome
						to Travel Triangle</h4>
					<h6
						class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-2">Have
						an incredible journey &nbsp;</h6>
				</div>
			</div>
		</div>
	</section>-->

	<span style="color: blue;">${msg}</span> ​
	<section class="header1 cid-qwYE4H2V83 mbr-parallax-background &nbsp"
		id="header1-4" data-rv-view="968">
		<div class="container-fluid" >
		<div class="w-100">
			<div class="row justify-content-md-center">
				<div class="mbr-white col-md-10">
					<form action="register.app" method="post">
						<h4>Signup/Register</h4>
						<div class="mbr-overlay"
							style="opacity: 5.3; background-color: rgb(0, 0, 0);">
							<source srcset="..." type="image/svg+xml">
							<img src="bootstrap/images/alexandre-godreau-188906.jpg"
								class="img-fluid " alt="...">
							</picture>
							<div class="container">
								<div class="w-50">
									<label for="fullName" style="color: white">FullName:</label> <input
										type="text" class="form-control" id="fullName" name="fullName"
										placeholder="Enter your full name" required="required">
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<label for="email" style="color: white">Email:</label> <input
										type="email" class="form-control" id="email" name="email"
										placeholder="Enter your email id" required="required">
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<label for="date" style="color: white">Date of Birth: </label>
									<input type="date" class="form-control" id="dateOfBirth"
										name="dateOfBirth" placeholder="Enter your Date of Birth"
										required="required">
								</div>
							</div>
							</br>

							<div class="container">
								<div class="w-50">
									<label for="gender" style="color: white">Gender:</label>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											id="gender1"> <label style="color: white"
											class="form-check-label" for="gender1">Male</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											id="gender2"> <label style="color: white"
											class="form-check-label" for="gender2"> Female </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="gender"
											id="gender3"> <label style="color: white"
											class="form-check-label" for="gender3"> Others </label>
									</div>
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<label for="address" style="color: white">Address: </label> <input
										type="text" class="form-control" id="address" name="address"
										placeholder="Enter your address" required="required">
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<label for="address" style="color: white">Contact
										Number: </label> <input type="number" class="form-control"
										id="contactNo" name="contactNo"
										placeholder="Enter your contact number" required="required">
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<label for="address" style="color: white">Password: </label> <input
										type="password" class="form-control" id="password"
										name="password" placeholder="Enter your password"
										required="required">
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<label for="address" style="color: white">Confirm
										Password: </label> <input type="password" class="form-control"
										id="confirmPassword" name="confirmPassword"
										placeholder="Please enter your password again"
										required="required">
								</div>
							</div>
							</br>
							<div class="container">
								<div class="w-50">
									<button type="submit" class="btn btn-info btn-sm">Save</button>
									<button type="reset" class="btn btn-secondary btn-sm">Reset</button>
								</div>
							</div>
							</br>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</div>
		<div class="google-map">
			<iframe frameborder="0" style="border: 0"src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d61298452.440218545!2d77.15254194790828!3d20.326715664591273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30635ff06b92b791%3A0xd78c4fa1854213a6!2sIndia!5e0!3m2!1sen!2sin!4v1621837106487!5m2!1sen!2sin" width="1349" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>

	<!-- <footer style="background: #000;"
		class="page-footer font-small #fff">
		<div class="footer-copyright text-center py-3">© 2021 Copyright</div>
	</footer>-->
	
		<footer style="background: #000;" class="page-footer font-small #20c997">
			<div class="footer-copyright text-center py-3"> © 2021 Copyright</div>
		</footer>
	
</body>
</html>
