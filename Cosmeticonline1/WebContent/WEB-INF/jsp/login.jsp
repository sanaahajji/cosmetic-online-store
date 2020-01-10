<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<META HTTP-EQUIV="Expires" CONTENT="-1">
<title>Cosmeticonline - Login</title>


<link rel="icon" type="image/ico" href="/images/favicon.ico">
<link href="stylesheet/bootstrap.css" rel="stylesheet" type="text/css">
<link href="stylesheet/css.css" rel="stylesheet" type="text/css">
<link href="stylesheet/responsive_layout.css" rel="stylesheet"
	type="text/css">
<link href="stylesheet/main.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.3.2.min.js"></script>


<script src="<c:url value="/js_dev/login.js" />"></script>




</head>

<body>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<section>

	<div class="register_topbg" style="margin-top: -10px;">
		<div class="container">
			<strong style="margin-left: 2%;">Login</strong>
		</div>
	</div>
	</section>
	<div class="space">&nbsp;</div>
	<!--Banner -->
	<div class="container">

		<div class="loginbg2">
			<p class="information_heading">
				<strong>Login </strong>
			</p>
			<div style="height: 18px;"></div>



			<form class="form-horizontal"	action="loginuser" method="post">
				 <c:choose>
    			<c:when test="${message == ' '}">
    				</c:when>
   				     <c:otherwise>
 				 <p align='center'>  <font color="red">  ${message} </font></p>
   						 </c:otherwise>
					</c:choose>        

				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">Your
						Email Id<span style="color: #F00">*</span>
					</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" name="uemail" id="uemail"
							placeholder="Enter Email Id" required="required">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">Password<span
						style="color: #F00">*</span></label>
					<div class="col-sm-6">
						<input type="password" class="form-control" name="upassword"
							id="upassword" placeholder="Password" required="required">
					</div>
				</div>



				





				<div class="form-group" style="margin-left: 30px;">
					<label for="inputPassword" class="col-sm-2 control-label manual">&nbsp;</label>
					<div class="col-sm-9">
						<!-- <a href="register"><button type="button" class="btn btn-default" id="register"
							>Register</button></a> -->
						<button type="submit" class="btn btn-default" id="signin">
							Sign In</button>
						<a href="index"><button type="button" class="btn btn-default"
									id="cancelbtn">Cancel</button></a>
							
					</div>
					
					
				</div>


<div class="form-group" align="right"">
                  <div class="col-sm-12">
					<p>Don't have an account?</p><a href="register"><font color="green"><b>Register</b></font></a>
					</div>
					</div>
					

			</form>
		</div>


	</div>





	<div style="margin-top: 40px;">
		<!--Footer box -->
		<%@ include file="/WEB-INF/jsp/footer.jsp"%>
		<!--Footer box -->
	</div>


	<script src="js1/wow.min.js"></script>
	<script src="js1/tab.js"></script>


	<script src="js1/jquery.min.js"></script>
	<script src="js1/bootstrap.js"></script>
</body>


</html>
