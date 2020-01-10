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
			<strong>Product List</strong><br>
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

					<div>
						<div class="panel-heading"
							style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
							<strong><a href="AddNewSport"><font
									style="color: white;">2. Add New Product </font></a></strong>
						</div>
					</div>

					<div>
						<div class="panel-heading"
							style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
							<strong><a href="Productlist"><font style="color: white;">3.
										Product List </font> </a></strong>
						</div>
					</div>
					
						<div>
						<div class="panel-heading"
							style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
							<strong><a href="Productlist"><font style="color: white;">2.
										Product List </font> <img
									src="images1/rightbluearrow.png" align="right"
									style="width: 7px; height: 13px; margin-right: 15px; margin-top: 15px;"
									alt=""> </a></strong>
						</div>
					</div>
					
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
					
					
     <table class="table table-hover">
	
   <tr>
  <div class="col-lg-4 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;margin-top: 10px;">
    <img src="images1/searchskills.png" alt="..." width=100 height=100 >
    <h3>Price 200</h3>
    <div><button type="button" style="background-color: #083087;"><font color="white">Add to cart</font></button></div>
    <div><button type="button" style="background-color: #083087;"><font color="white">Buy</font></button></div>
    </div>
   </tr>
    <tr>
  <div class="col-lg-4 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;margin-top: 10px;">
    <img src="images1/searchskills.png" alt="..." width=100 height=100>
    <h3>Price 200</h3>
    <div><button type="button" style="background-color: #083087;"><font color="white">Add to cart</font></button></div>
    <div><button type="button" style="background-color: #083087;"><font color="white">Buy</font></button></div>
    </div>
   </tr>
   <tr>
  <div class="col-lg-4 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;margin-top: 10px;">
    <img src="images1/searchskills.png" alt="..." width=100 height=100>
    <h3>Price 200</h3>
    <div><button type="button" style="background-color: #083087;"><font color="white">Add to cart</font></button></div>
    <div><button type="button" style="background-color: #083087;"><font color="white">Buy</font></button></div>
    </div>
   </tr>
   <tr>
  <div class="col-lg-4 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;margin-top: 10px;">
    <img src="images1/searchskills.png" alt="..." width=100 height=100>
    <h3>Price 200</h3>
    <div><button type="button" style="background-color: #083087;"><font color="white">Add to cart</font></button></div>
    <div><button type="button" style="background-color: #083087;"><font color="white">Buy</font></button></div>
    </div>
   </tr>
  
   
  
  </table>
  
   
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
