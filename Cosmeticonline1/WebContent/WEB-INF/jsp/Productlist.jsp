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
<title>Cosmetic online</title>





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
			<strong>
			<c:choose>
						<c:when test="${userdata.utype=='admin'}">
			Admin Home
			</c:when>
			<c:otherwise>Buy Product</c:otherwise>
			</c:choose>
			
			
			</strong><br>
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
							<strong> <font style="color: white; cursor: pointer;">Product List
								 </font>
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
									<strong><a href="AddNewProduct"><font
											style="color: white;">2. Add New Product </font> </a></strong>
								</div>
							</div>

							<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="listofprod"><font
											style="color: white;">3. Product List </font> </a><img src="images1/rightbluearrow.png" align="right"
								style="width: 7px; height: 13px; margin-right: 15px; margin-top: 15px;"
								alt=""></strong>
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
									<strong><a href="listofprod"><font
											style="color: white;">2. Product List </font> </a><img src="images1/rightbluearrow.png" align="right"
								style="width: 7px; height: 13px; margin-right: 15px; margin-top: 15px;"
								alt=""></strong>
								</div>
							</div>
							
							<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="Showcartdata?uid=${userdata.uid}"><font
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
					<strong> Product List</strong>
				</p>


				<form id="createnewuser" method="post" action="#"
					class="form-horizontal" role="form">
					
					
					<c:choose>
						<c:when test="${userdata.utype=='admin'}">
					
					<div class="form-group">
						<label for="inputPassword" class="col-sm-1 control-label"> </label>
						<div class="col-sm-12">
							 <table class="table table-hover" border="1 px solid;" >
									<tbody>
									<tr align="center">
									<th align="center">S.No.</th>
									<th align="center">Pic</th>
									<th align="center">Name of Product</th>
									<th align="center">Total Count</th>
									<th align="center">Price</th>
									<th align="center">Update - Delete</th>
									
									</tr>
									
									<c:forEach var="data" items="${ProductList}" varStatus="row">
									<tr>
										<td align="center">${row.index+1}</td>
										<td align="center"><img src="images1/${data.imgname}"  width=60 height=60></td>
										<td align="center">${data.productname}</td>
										<td align="center">${data.total}</td>
										<td align="center">${data.price}</td>
										<td align="center"> 
										<a href="databyprodid?id=${data.pid}"><button type="button" style="background-color: #083087;"><font color="white">Update</font></button></a>
										<a href="databyprodiddel?id=${data.pid}"><button type="button" style="background-color: #083087;"><font color="white">Delete</font></button></a>
										</td>
									</tr>
									</c:forEach>
								</tbody>
								</table>
						</div>
					</div>
					</c:when>
					<c:otherwise>
					
					<div class="form-group">
						<label for="inputPassword" class="col-sm-1 control-label"> </label>
						<div class="col-sm-12">
							 <table class="table table-hover" border="1 px solid;" >
									<tr>
    <div class="row " style="margin-top:10px; margin-bottom:40px;">
    </tr>
    <c:forEach var="data" items="${ProductList}" varStatus="row">
     <tr>
    <div class="col-lg-3 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;">
    <h5>${data.productname}</h5>
    <img src="images1/${data.imgname}" alt="..." width=200 height=200>
    <h5>Price- ${data.price}</h5>
    <a href="addtocart?pid=${data.pid}&uid=${userdata.uid}"><button type="button" style="background-color: #007a52"><font color="white">Add to cart</font></button></a>
    <a href="buy?pid=${data.pid}&uid=${userdata.uid}"><button type="button" style="background-color: #007a52"><font color="white">Buy</font></button></a>
    </div>

   </tr>
   </c:forEach>
								</tbody>
								</table>
						</div>
					</div>
					
					
					
					</c:otherwise>
					</c:choose>
					</form>
					
						
						
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
