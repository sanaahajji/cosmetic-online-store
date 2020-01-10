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
<title>Sports Hub- Add new Event</title>




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

<!-- for card ui -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/styles.css">
<link rel="stylesheet" type="text/css" href="assets/css/demo.css">
<!-- end -->
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
	<div class="container-fluid">
		<!-- <header>
            <div class="limiter">
                <h3>Demo: Credit Card Validation With Payform.js</h3>
                <a href="http://tutorialzine.com/2016/11/simple-credit-card-validation-form/">Download</a>
            </div>
        </header> -->



		<div class="creditCardForm">
			<div class="heading">
				<h1>Confirm Purchase</h1>
			</div>
			<div class="payment">
				<form id="carddata" method="post" action="buybyCards"
					class="form-horizontal" role="form">
				
			<%-- 	<input type="hidden" id="bid" name="bid" value="${buyproductdata.bid}"> --%>
			<%-- 	<input type="hidden" id="count" name="count" value="${buyproductdata.noofbuyprod}"> --%>
				<input type="hidden" id="price" name="price" value="${totalofcart}">
				<input type="hidden" id="uid" name="uid" value="${userdata.uid}">
			
				
				
				
				
					<div class="form-group owner">
						<label for="owner">Owner</label> <input type="text"
							class="form-control" id="owner" name="owner" value="${buyproductdata.owner}">
					</div>
					<div class="form-group CVV">
						<label for="cvv">CVV</label> <input type="text"
							class="form-control" id="cvv" maxlength="3" >
					</div>
					<div class="form-group" id="card-number-field">
						<label for="cardNumber">Card Number</label> <input type="text" name="cardnumber"
							class="form-control" id="cardNumber" name="cardNumber" maxlength="16">
					</div>
					<div class="form-group" id="expiration-date">
						<label>Expiration Date</label> 
						<select id="Expirationmonth" name="Expiration">
							<option value="January">January</option>
							<option value="February">February</option>
							<option value="March">March</option>
							<option value="April">April</option>
							<option value="May">May</option>
							<option value="June">June</option>
							<option value="July">July</option>
							<option value="August">August</option>
							<option value="September">September</option>
							<option value="October">October</option>
							<option value="November">November</option>
							<option value="December">December</option>
						</select>
						 <select id="Expirationyear" name="Expirationyear">
							<option value="2019">2019</option>
							<option value="2020">2020</option>
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
							<option value="2024">2024</option>
							<option value="2025">2025</option>
						</select>
					</div>
					<div class="form-group" id="credit_cards">
						<img src="assets/images/visa.jpg" id="visa"> <img
							src="assets/images/mastercard.jpg" id="mastercard"> <img
							src="assets/images/amex.jpg" id="amex">
					</div>
					<div class="form-group" id="pay-now">
						<button type="submit" class="btn btn-default"
							id="confirm-purchase">Confirm</button>
					</div>
				</form>
			</div>
		</div>

	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- <script src="assets/js/jquery.payform.min.js" charset="utf-8"></script>
	<script src="assets/js/script.js"></script> -->


</body>
</html>