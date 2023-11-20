<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>Corporate Bank a Banking Category Bootstrap responsive
	Website Template | Home :: XXlayouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- .css files -->
<link href="${pageContext.request.contextPath}/resources/css/bars.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->

<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 50%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
	<div class="top-main">
		<div class="number">
			<h3>
				<i class="fa fa-phone" aria-hidden="true"></i> +91 080 987 6541
			</h3>
			<div class="clearfix"></div>
		</div>
		<div class="social-icons">
			<ul class="top-icons">
				<li><a href="#"><i class="fa fa-facebook"
						aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"
						aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-pinterest-p"
						aria-hidden="true"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"
						aria-hidden="true"></i></a></li>
			</ul>
			<div class="form-top">
				<form action="#" method="post" class="navbar-form navbar-left">
					<div class="form-group">
						<input type="search" class="form-control" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
					<!-- <button type="submit" class="btn btn-default">Submit</button> -->
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- Top-Bar -->
	<div class="top-bar">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#myNavbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-right">

						<li><a href="index.jsp" class="scroll">home</a></li>


						<!-- <li><a href="#services" class="scroll">services</a></li> -->

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="logo">
		<a href="index.html"> <!--<i class="fa fa-inr" aria-hidden="true"></i>-->prospective
			lenders <span>Details</span>
		</a>
	</div>

	<br>
	<jsp:useBean id="now" class="java.util.Date" />
	<fmt:formatDate value="${now}" var="no" pattern="yyyy-MM-dd" />
	<!-- services -->
	<section class="services" id="services">
		<div class="container">
			<div class="services-heading">
				<h3>Due Details</h3>
			</div>
			<div class="service-grids">







				<c:forEach var="money" items="${month}">
			
					<c:forEach var="loan" items="${loan}">
				
				

					<c:if test="${money.duration=='12 months' }">
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month1 }</h3>
										<p>Amount: ${money.amount1}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>


										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month1}"> <input
											type="hidden" name="amount" value="${money.amount1}">
											<input type="hidden" name="month_Status" value="month1">

										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">



										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month1)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month1}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>

						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month2 }</h3>
										<p>Amount: ${money.amount2}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month2}"> <input
											type="hidden" name="amount" value="${money.amount2}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month2">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month2)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month2}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month3 }</h3>
										<p>Amount: ${money.amount3}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>


										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month3}"> <input
											type="hidden" name="amount" value="${money.amount3}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month3">

										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month3)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month3}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month4}</h3>
										<p>Amount: ${money.amount4}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>


										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month4}"> <input
											type="hidden" name="amount" value="${money.amount4}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month4">

										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month4)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month4}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month5}</h3>
										<p>Amount: ${money.amount5}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month5}"> <input
											type="hidden" name="amount" value="${money.amount5}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month5">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month5)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month5}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>


						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month6 }</h3>
										<p>Amount: ${money.amount6}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month6}"> <input
											type="hidden" name="amount" value="${money.amount6}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month6">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month6)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month6}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month7 }</h3>
										<p>Amount: ${money.amount7}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month7}"> <input
											type="hidden" name="amount" value="${money.amount7}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month7">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month7)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month7}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month8}</h3>
										<p>Amount: ${money.amount8}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month8}"> <input
											type="hidden" name="amount" value="${money.amount8}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month8">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month8)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month8}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month9}</h3>
										<p>Amount: ${money.amount9}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month9}"> <input
											type="hidden" name="amount" value="${money.amount9}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month9">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month9)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month9}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month10}</h3>
										<p>Amount: ${money.amount10}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month10}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
										<input type="hidden" name="amount" value="${money.amount10}">
										<input type="hidden" name="month_Status" value="month10">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month10)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month10}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>

						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month11}</h3>
										<p>Amount: ${money.amount11}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month11}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
										<input type="hidden" name="amount" value="${money.amount11}">
										<input type="hidden" name="month_Status" value="month11">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month11)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month11}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month12 }</h3>
										<p>Amount: ${money.amount12}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month12}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">

										<input type="hidden" name="amount" value="${money.amount12}">
										<input type="hidden" name="month_Status" value="month12">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month12)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month12}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>

					</c:if>



					<c:if test="${money.duration=='10 months' }">
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month1 }</h3>
										<p>Amount: ${money.amount1}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month1}"> <input
											type="hidden" name="amount" value="${money.amount1}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month1">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month1)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month1}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>

						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month2 }</h3>
										<p>Amount: ${money.amount2}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month2}"> <input
											type="hidden" name="amount" value="${money.amount2}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month2">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month2)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month2}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month3 }</h3>
										<p>Amount: ${money.amount3}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month3}"> <input
											type="hidden" name="amount" value="${money.amount3}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month3">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month3)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month3}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month4}</h3>
										<p>Amount: ${money.amount4}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month4}"> <input
											type="hidden" name="amount" value="${money.amount4}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month4">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month4)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month4}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month5}</h3>
										<p>Amount: ${money.amount5}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month5}"> <input
											type="hidden" name="amount" value="${money.amount5}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month5">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month5)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month5}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>


						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month6}</h3>
										<p>Amount: ${money.amount6}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month6}"> <input
											type="hidden" name="amount" value="${money.amount6}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month6">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month6)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month6}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month7}</h3>
										<p>Amount: ${money.amount7}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month7}"> <input
											type="hidden" name="amount" value="${money.amount7}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month7">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month7)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month7}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month8}</h3>
										<p>Amount: ${money.amount8}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month8}"> <input
											type="hidden" name="amount" value="${money.amount8}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month8">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month8)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month8}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month9}</h3>
										<p>Amount: ${money.amount9}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month9}"> <input
											type="hidden" name="amount" value="${money.amount9}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month9">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month9)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month9}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month10}</h3>
										<p>Amount: ${money.amount10}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month10}">

										<input type="hidden" name="amount" value="${money.amount10}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month10">
										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month10)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month10}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>

					</c:if>



					<c:if test="${money.duration=='6 months' }">
				
						<div class="service-grid-top">











							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<form action="Pay" method="get">

										<h3>${money.month1}</h3>
										<p>Amount: ${money.amount1}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month1}"> <input
											type="hidden" name="amount" value="${money.amount1}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month1">
										
										
										
										<c:choose>
										
										
										<c:when test="${loan.month_Status=='month1'}">
										
										<p>paid</p>
										</c:when>
															
											<c:when test="${no.equalsIgnoreCase(money.month1)}">


												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:when test="${no gt money.month1}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise >
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>

										</c:choose>




									</form>
								</div>
								<br>
							</div>
							
						</div>
						

						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">
									<form action="Pay" method="get">
										<h3>${money.month2 }</h3>
										<p>Amount: ${money.amount2}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month2}"> <input
											type="hidden" name="amount" value="${money.amount2}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month2">

										<c:choose>
										<c:when test="${loan.o_status=='complete' && loan.month_Status=='month2'}">
										
										<p>paid</p>
										</c:when>
										
											<c:when test="${no.equalsIgnoreCase(money.month2)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month2}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>

									</form>
								</div>
								<br>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">
									<form action="Pay" method="get">
										<h3>${money.month3 }</h3>
										<p>Amount: ${money.amount3}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>
										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month3}"> <input
											type="hidden" name="amount" value="${money.amount3}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month3">
										<c:choose>
										
										<c:when test="${loan.o_status=='complete' && loan.month_Status=='month3'}">
										
										<p>paid</p>
										</c:when>
											<c:when test="${no.equalsIgnoreCase(money.month3)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month3}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
								<br>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">
									<form action="Pay" method="get">
										<h3>${money.month4 }</h3>
										<p>Amount: ${money.amount4}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month4}"> <input
											type="hidden" name="amount" value="${money.amount4}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month4">

										<c:choose>
										<c:when test="${loan.o_status=='complete' && loan.month_Status=='month3'}">
										
										<p>paid</p>
										</c:when>
											<c:when test="${no.equalsIgnoreCase(money.month4)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month4}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
								<br>
							</div>
						</div>
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">
									<form action="Pay" method="get">
										<h3>${money.month5 }</h3>
										<p>Amount: ${money.amount5}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month5}"> <input
											type="hidden" name="amount" value="${money.amount5}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month5">

										<c:choose>
										<c:when test="${loan.o_status=='complete' && loan.month_Status=='month5'}">
										
										<p>paid</p>
										</c:when>
											<c:when test="${no.equalsIgnoreCase(money.month5)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month5}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>




									</form>
								</div>
								<br>
							</div>
						</div>


						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month6 }</h3>
										<p>Amount: ${money.amount6}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>


										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month6}"> <input
											type="hidden" name="amount" value="${money.amount6}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month6">


										<c:choose>
										<c:when test="${loan.o_status=='complete' && loan.month_Status=='month6'}">
										
										<p>paid</p>
										</c:when>
											<c:when test="${no.equalsIgnoreCase(money.month6)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month6}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
								<br>
							</div>
						</div>


					</c:if>





					<c:if test="${money.duration=='2 months' }">
						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month1 }</h3>
										<p>Amount: ${money.amount1}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month1}"> <input
											type="hidden" name="amount" value="${money.amount1}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month1">


										<c:choose>
										
											<c:when test="${no.equalsIgnoreCase(money.month1)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month1}">
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>

						<div class="service-grid-top">

							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">




									<form action="Pay" method="get">
										<h3>${money.month2 }</h3>
										<p>Amount: ${money.amount2}</p>
										<p style="color: blue;; font-weight: bold;">Lender_Name:
											${money.username}</p>
										<p style="color: blue;; font-weight: bold;">Borrower_Name:
											${name}</p>

										<input type="hidden" name="lender_name"
											value="${money.username}"> <input type="hidden"
											name="borrower_name" value="${name}"> <input
											type="hidden" name="month" value="${money.month2}"> <input
											type="hidden" name="amount" value="${money.amount2}">
										<input type="hidden" name="date" value="${no}"> <input
											type="hidden" name="duration" value="${money.duration}">
											<input type="hidden" name="month_Status" value="month2">


										<c:choose>
											<c:when test="${no.equalsIgnoreCase(money.month2)}">
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">
											</c:when>
											<c:when test="${no gt money.month2}">
											
												<p style="color: red;">You haven't paid the monthly
													payment</p>
												<input type="submit" value="Pay"
													style="color: maroon; background: orange;">

											</c:when>
											<c:otherwise>
												<p style="color: red;">You haven't reached the pay date</p>
											</c:otherwise>
										</c:choose>
									</form>
								</div>
							</div>
						</div>




					</c:if>


</c:forEach>
</c:forEach>
			

				<div class="clearfix"></div>
			</div>


			<div class="clearfix"></div>
		</div>
		</div>

	</section>




	<section class="copyright">
		<div class="agileits_copyright text-center">
			<p>
				All rights reserved | Design by <a
					href="//w3layouts.com/" class="w3_agile">XXlayouts</a>
			</p>
		</div>
	</section>
	<!-- //copyright -->

	<script
		src="${pageContext.request.contextPath}/resources/js/jarallax.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/easing.js"></script>

	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="${pageContext.request.contextPath}/resources/js/bars.js"></script>
</body>
<!-- //Body -->
</html>
<!-- //html -->