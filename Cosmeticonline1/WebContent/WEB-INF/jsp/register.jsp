<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<title>Cosmeticonline - Register</title>




<link rel="icon" href="../../favicon.ico">
<link href="stylesheet/bootstrap.css" rel="stylesheet" type="text/css">
<link href="stylesheet/css.css" rel="stylesheet" type="text/css">
<link href="stylesheet/responsive_layout.css" rel="stylesheet"
	type="text/css">
<link href="stylesheet/main.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" type="text/css" media="all"
	href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap-fileupload/bootstrap-fileupload.css" />

<!--  -->
<link href="stylesheet/bootstrap.min2.css" rel="stylesheet">
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<script src="js/jquery-1.3.2.min.js"></script>




<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<body>


	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<section>

	<div class="register_topbg">
		<div class="container">
			<strong>Create a new User</strong><br>
		</div>
	</div>
	</section>
	<!--Middle Area -->
	<section>
	<div class="container">
		<div class="result_leftDiv"></div>
		<div class="result_rightDivpassowrd">

			<div class="stipbg2">
				<p class="information_heading">
					<strong>Personal Information</strong>
				</p>


<form id="registerUser" method="post" action="registerUser" name="myForm"
					class="form-horizontal" role="form">


					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Firt
							Name :</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="ufname" name="ufname"
								placeholder="Enter the First name" required />
						</div>
					</div>

					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Last
							Name :</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="ulastname"
								name="ulastname" placeholder="Enter the Last name" required/>
						</div>
					</div>



					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Email
							Id : </label>
						<div class="col-sm-6">
							<input type="email" class="form-control" id="uemail" name="uemail"
								placeholder="Enter Email" required/>
						</div>
					</div>

					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Password
							: </label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="upassword"
								name="upassword" placeholder="Enter Password" required/>
						</div>
					</div>


					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Contact
							Number : </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="ucontactnumber"
								name="ucontactnumber" placeholder="Enter contact number" required/>
						</div>
					</div>






					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label manual">&nbsp;</label>
						<div class="col-sm-9" align="center" style="margin-left: 13%;">
							<input type="submit" class="btn btn-default" id="savebutton" value="Create" />
				
							<a href="index"><button type="button" class="btn btn-default"
									id="cancelbtn">Cancel</button></a>

							<div class="form-group">

								<div class="col-sm-6"></div>
							</div>






						</div>
					</div>
				</form>

				<center></center>

			</div>
		</div>
	</div>
	</section>


	<script src="js1/bootstrap.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js1/ie10-viewport-bug-workaround.js"></script>
	<script src="js1/wow.min.js"></script>
	<script src="js1/tab.js"></script>



	<!-- js placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script class="include" type="text/javascript"
		src="jsform/jquery.dcjqaccordion.2.7.js"></script>
	<script type="text/javascript"
		src="assets/bootstrap-fileupload/bootstrap-fileupload.js"></script>

</body>
</html>
