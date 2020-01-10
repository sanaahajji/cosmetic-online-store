<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header class="hide_block">
	<div class="topbg">
		<div class="header_container" role="header">


			<div class="col-sm-4" style="margin-top: -20px;">
				<a href="/"><img src="images1/logo.jpg" alt="Logo" height=100
					width="200" title="Cosmetic"></a>
			</div>

			<c:choose>
				<c:when test="${userdata == null}">


					<div class=" col-sm-3 pull-right">
						<div class="col-sm-12">
							<div class="col-sm-6">
								<a href="register">
									<button type="button" class="btn btn-default" id="savebutton">
										Register</button>
								</a>
							</div>
							<div class=" col-sm-6">
								<a href="login">
									<button type="button" class="btn btn-default" id="savebutton">Sign
										in</button>
								</a>
							</div>
						</div>
					</div>

				</c:when>
				<c:otherwise>

					<div class=" col-sm-6 pull-right">
						<div class="col-sm-12">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="right" valign="middle" ><b
										style="text-transform: capitalize;margin-left: 100px;">Welcome ${userdata.ufname} ${userdata.ulastname} !</b></td>
									<td align="left" valign="top">
										<ul class="newnav pull-right top-menu"
											style="margin: 0px 10px 0 0;">
											<!-- user login dropdown start-->
											<li class="dropdown" style="margin: 0px; padding: 0px;"><a
												href="#" class="dropdown-toggle" data-toggle="dropdown">
													<span
													style="font-weight: bold; border: solid 1px #357500; background: #60b51a; color: #FFF; padding: 10px 20px 10px 20px; width: 100%; display: table-cell;">My
														Account <b class="caret"></b>
												</span>
											</a>
												<ul class="dropdown-menu extended logout">
													<div class="log-arrow-up"></div>
												<!-- 	<li><a href="resetPassword">Change Password</a></li> -->
													<li><a href="logout"><i class="icon-key"></i> Log
															Out</a></li>
												</ul></li>
											<!-- user login dropdown end -->
										</ul>
									</td>
									
									
									<c:if test="${userdata.utype=='user'}">
									<td><a href="Showcartdata?uid=${userdata.uid}"><img src="images/cart.png" alt="Logo" height=50
					width="70" title="cart"><b style="color: blue"> ${cartnumber} </b></a></td>
</c:if>					
					
					
								</tr>
							</table>

						</div>
					</div>
				</c:otherwise>
			</c:choose>

		
		</div>
	</div>
	</header>
</body>
</html>