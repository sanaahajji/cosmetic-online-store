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
<title>Sports Hub- Add new Sport</title>




<link rel="icon" type="image/ico" href="images/favicon.ico">
<link href="stylesheet/bootstrap.css" rel="stylesheet" type="text/css">
<link href="stylesheet/css.css" rel="stylesheet" type="text/css">
<link href="stylesheet/responsive_layout.css" rel="stylesheet"
	type="text/css">
<link href="stylesheet/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/jquery-ui.css" />
<link href="css/jquery.autocomplete.css" rel="stylesheet"
	type="text/css" />

<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<script src="js/jquery-1.10.2.js"></script>
<script src="js1/bootstrap.js"></script>
<script src="js/jquery-ui.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>



<!-- <script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function()
{window.location.hash="";}
</script> 
 -->
 </head>
 <c:if test="${userdata == null}">
	<c:redirect url="login"></c:redirect>
</c:if>
<body>


	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<section>

	<div class="register_topbg">
		<div class="container">
			<strong>Admin Home</strong><br>
		</div>
	</div>
	</section>
	<!--Middle Area -->
	<section>
	<div class="container">
		<div class="result_leftDiv">

			<div class="stipbg">
				<div class="panel-body bio-graph-info">

					<div class="panel panel-primary">
						<div class="panel-heading" style="background-color: #60b51a;"
							align="center">
							<strong> <font style="color: white; cursor: pointer;">
									Rights </font>
							</strong>
						</div>
					</div>

					<div>

						<div class="panel-heading"
							style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;">
							<strong><a href="Home"> <font
									style="color: white; cursor: pointer;">1. Welcome</font>
							</a> </strong>
						</div>
					</div>

<c:choose>
						<c:when test="${userdata.utype=='admin'}">
					<div>
						<div class="panel-heading"
							style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
							<strong><a href="AddNewSport"><font
									style="color: white;">2. Add New Product </font> <img
									src="images1/rightbluearrow.png" align="right"
									style="width: 7px; height: 13px; margin-right: 15px; margin-top: 15px;"
									alt=""></a></strong>
						</div>
					</div>

					<div>
						<div class="panel-heading"
							style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
							<strong><a href="listofprod"><font
									style="color: white;">3. Product List </font> </a></strong>
						</div>
					</div>
					
					<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="Bargraph"><font
											style="color: white;">4. Bargraph  </font> </a></strong>
								</div>
							</div>
					</c:when>
					<c:otherwise>
					
					
							<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="Productlist"><font
											style="color: white;">2. Product List </font> </a></strong>
								</div>
							</div>
					
					<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="listofprod"><font
											style="color: white;">3. Cart (${cartnumber})</font> </a></strong>
								</div>
							</div>
					</c:otherwise>
					</c:choose>
					
					
				</div>
			</div>

		</div>
		<div class="result_rightDivpassowrd">

			<div class="stipbg2">
				<p class="information_heading">
					<strong>Add new Product</strong>
				</p>


				<form id="addnewprod" method="post" action="addnewprod"
					class="form-horizontal" role="form">


					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">New
							Product : </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="productname"
								name="productname" placeholder="Enter Sport Name" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Image
							name : </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="imgname"
								name="imgname"
								placeholder="Copy and paste in image1 Dir and image name here" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Total : </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="total"
								name="total"
								placeholder="total number of product" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label">Price : </label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="price"
								name="price"
								placeholder="price" />
						</div>
					</div>
					
					<div class="form-group" style="margin-top: 0%;">

						<label for="inputPassword" class="col-sm-2 control-label"
							style="margin-top: 0%;">Description New Product</label>
						<div class="col-sm-8" align="right"></div>

						<div class="col-sm-8">
							<textarea id="proddesc" name="proddesc" class="form-control"
								cols="35" rows="8" placeholder="Describe Product here..."></textarea>
						</div>
					</div>




					<div class="form-group">
						<label for="inputPassword" class="col-sm-2 control-label manual">&nbsp;</label>
						<div class="col-sm-9" align="center" style="margin-left: 13%;">
							<button type="submit" class="btn btn-default" id="savebutton">Add
								Product</button>
							<a href="/"><button type="button" class="btn btn-default"
									id="cancelbtn">Cancel</button></a>
						</div>

					</div>
				</form>

				<center></center>

			</div>
		</div>
	</div>
	</section>


	<div style="margin-top: 40px;">
		<!--Footer box -->
		<%@ include file="/WEB-INF/jsp/footer.jsp"%>
		<!--Footer box -->
	</div>



</body>
</html>
