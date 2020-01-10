<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="SportsHub">
<meta name="author" content="">
<meta name="keywords" content="SportsHub">


<title>Cosmeticonline:Index</title>

<link rel="icon" type="image/ico" href="images/favicon.ico">
<link href="stylesheet/bootstrap.css" rel="stylesheet" type="text/css">
<link href="stylesheet/css.css" rel="stylesheet" type="text/css">
<link href="stylesheet/responsive_layout.css" rel="stylesheet"
	type="text/css">
<link href="stylesheet/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/jquery-ui.css" />
<link href="css/jquery.autocomplete.css" rel="stylesheet"
	type="text/css" />
<link href="stylesheet/styleDev.css" rel="stylesheet" type="text/css">

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




</head>

<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>










	<!--  -->
	<div>


		<form action="#" method="post">
			<!--  <div class="banner_container"> -->
			<div>
				<section id="slider-box">
					<div id="carousel" class="carousel slide" data-ride="carousel">


						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item">
								<img src="images1/1.jpg" alt="...">
							</div>
							<div class="item active">
								<img src="images1/2.jpg" alt="...">
							</div>
							<div class="item ">
								<img src="images1/3.jpg" alt="...">
							</div>
							<div class="item">
								<img src="images1/4.jpg" alt="...">
							</div>
							<div class="item">
								<img src="images1/5.jpg" alt="...">
							</div>
							<div class="item">
								<img src="images1/6.jpg" alt="...">
							</div>
							<div class="item">
								<img src="images1/7.jpg" alt="...">
							</div>
							<div class="item">
								<img src="images1/8.jpg" alt="...">
							</div>
						</div>

						<!-- Controls -->

						<a class="left carousel-control" href="#carousel" role="button"
							data-slide="prev"> <!--  <span class="glyphicon glyphicon-chevron-left"></span> -->
							<span><img src="images1/left_arrow.png" alt=""
								style="width: 20px; height: 30px; margin-top: 100%"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#carousel" role="button"
							data-slide="next"> <!-- <span class="glyphicon glyphicon-chevron-right"></span> -->
							<span> <img src="images1/right_arrow.png" alt=""
								style="width: 20px; height: 30px; margin-top: 100%"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</section>





			</div>
		</form>
	</div>





	<section>
		<div style="margin-top: 10px;"></div>

	</section>

  <section style="background: #f1f1f1 !important; padding-top:20px;">
     <div class="section_container">
    <div class="container">	
    <h1 class="heading"><span class="line">Choose any product</span></h1>
     <table class="table table-hover" border="1 px solid;" >
	<tr>
    <div class="row " style="margin-top:30px; margin-bottom:40px;">
    </tr>
    <c:forEach var="data" items="${ProductList}" varStatus="row">
     <tr>
    <div class="col-lg-4 text-center" style="text-align:center !important; align:center !important; margin 0 auto !important;">
    <img src="images1/${data.imgname}" alt="..." width=300 height=300><h3>Price- ${data.price}</h3></div>
   </tr>
   </c:forEach>
  </table>
    </div>
    </div>
    </div>
    </section>

 <section>
    <div class="container">
    <div class="video_Divmaincss">
    <video controls id="0" class="video">
<source type="video/mp4" src="images1/beauty.mp4"></source>
<source type="video/ogg; codecs=&quot;theora, vorbis&quot;" src="beauty"></source>
<source type="video/webm" src="trainer_av.webm"></source>

</video>
    
    </div>
  <div class="video_rigthcontainer">
  <img src="images1/bridl.webp" alt="...">

    </div>
    
    </div>
    <div class="clear"></div>
    </section>




	<!--Footer box -->
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
	<!--Footer box -->








</body>
</html>
