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
function clickall()
{
	
	document.getElementById("allbt").click();
	} -->

</script>
 </head>
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
									<strong><a href="AddNewProduct"><font
											style="color: white;">2. Add New Product </font> </a></strong>
								</div>
							</div>

							<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="listofprod"><font
											style="color: white;">3. Product List </font> </a></strong>
								</div>
							</div>

						</c:when>
						<c:otherwise>

							<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="listofprod"><font
											style="color: white;">2. Product List </font> </a>
											 </strong>
								</div>
							</div>
							
							
							<div>
								<div class="panel-heading"
									style="background-color: #002066; margin: 1px 0 1px 0px; border-radius: 0px;"">
									<strong><a href="Showcartdata?uid=${userdata.uid}"><font
											style="color: white;">3. Cart (${cartnumber})</font> </a>
											<img src="images1/rightbluearrow.png" align="right"
								style="width: 7px; height: 13px; margin-right: 15px; margin-top: 15px;"
								alt=""></strong>
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
					<strong> Cart</strong><span style="margin-left:70%">Total value: ${totalofcart}</span>
					
				</p>


				<form id="createnewuser" method="post" action="#"
					class="form-horizontal" role="form">
					
					
     <table class="table table-hover">
	 <c:forEach var="datab" items="${buyproductcart}" varStatus="row">
   <tr>
  <div class="col-lg-4 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;margin-top: 10px;">
   <h5>${datab.productname}</h5>
    <img src="images1/${datab.imgname}" alt="..." width=100 height=100 >
    <h4>Price:${datab.price}</h4>
    
    <div>
    <Select id="countprod" name="countprod">
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
													</Select>
    
<%--     <a href="buyfromcart?bid=${datab.bid}&uid=${userdata.uid}&pid=${datab.pid}"><button type="button" style="background-color: #083087;"><font color="white">Checkout</font></button></a>
 --%> 
  <a href = "javascript:;" onclick = "this.href='buyfromcart?bid=${datab.bid}&uid=${userdata.uid}&pid=${datab.pid}&count=' + document.getElementById('countprod').value">
  <button id="allbt" type="button" style="background-color: #083087;"><font color="white">Checkout</font></button></a>  
     
    
    <a href="delcartbyid?bid=${datab.bid}&uid=${userdata.uid}"><button type="button" style="background-color: #083087;"><font color="white">Delete</font></button></a>
    </div></div>
   </tr>
   </c:forEach>
   
  </table>
  
  <table align="right">
  <tr>
  <td>Total value: ${totalofcart}: </td>
   <td><a href="chkoutall?uid=${userdata.uid}"><button type="button" style="background-color: #083087;"><font color="white">Checkout all</font></button>
 </td>
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
