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


					<!-- 	<li><a href="#services" class="scroll">services</a></li> -->

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



				<div class="service-grid-top">




<c:if test="${dues=='12 months' }">
<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month1" />
									<h5>Month 1</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month2" />
									<h5>Month 2</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month3" />
									<h5>Month 3</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month4" />
									<h5>Month 4</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month5" />
									<h5>Month 5</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month6" />
									<h5>Month 6</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month7" />
									<h5>Month 7</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month8" />
									<h5>Month 8</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month9" />
									<h5>Month 9</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month10" />
									<h5>Month 10</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month11" />
									<h5>Month 1</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month12" />
									<h5>Month 12</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
</c:if>






					

	<c:if test="${dues=='10 months' }">
	<div class="service-grid-top">

						<form action="month" method="post">
	<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month1" />
									<h5>Month 1</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month2" />
									<h5>Month 2</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month3" />
									<h5>Month 3</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month4" />
									<h5>Month 4</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month5" />
									<h5>Month 5</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month6" />
									<h5>Month 6</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month7" />
									<h5>Month 7</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month8" />
									<h5>Month 8</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month9" />
									<h5>Month 9</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
					<div class="service-grid-top">





						<form action="month" method="post">





							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="lender" value="${lender }" />
										<input type="hidden" name="mstatus" value="month10" />
									<h5>Month 10</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>
	</c:if>











				<c:if test="${dues=='6 months' }">



					<div class="service-grid-top">





						<form action="month" method="post">

				<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" />
									<input type="hidden" name="lender" value="${lender }" />
									 <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="mstatus" value="month1" />
									<h5>Month 1</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>

									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>

					</div>


					<div class="service-grid-top">

						<div class="col-md-4 service-grid-1">
							<form action="month" method="post">
								<div class="service-grid-text">
									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" />
									<input type="hidden" name="lender" value="${lender }" />
									 <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="mstatus" value="month2" />
									<h5>Month 2</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</form>
						</div>

					</div>
					<div class="service-grid-top">

						<div class="col-md-4 service-grid-1">
							<form action="month" method="post">
								<div class="service-grid-text">
									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> 
									<input type="hidden" name="lender" value="${lender }" />
									<input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="mstatus" value="month3" />
									<h5>Month 3</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</form>
						</div>
					</div>
					<div class="service-grid-top">

						<div class="col-md-4 service-grid-1">
							<div class="service-grid-text">
								<form action="month" method="post">
									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" />
									<input type="hidden" name="lender" value="${lender }" />
									 <input
										type="hidden" name="total_amount" value="${amount }" />
										<input type="hidden" name="mstatus" value="month4" />

									<h5>Month 4</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>
								</form>
							</div>

							<br>

						</div>
					</div>
					<div class="service-grid-top">
						<form action="month" method="post">
							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" />
									<input type="hidden" name="lender" value="${lender }" />
									<input type="hidden" name="mstatus" value="month5" />
									 <input
										type="hidden" name="total_amount" value="${amount }" />
									<h5>Month 5</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>
								</div>
								<br>
							</div>
						</form>
					</div>


					<div class="service-grid-top">
						<form action="month" method="post">
							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">

									<input type="hidden" name="username" value="${username }" /> <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
										<input type="hidden" name="mstatus" value="month6" />
									<input type="hidden" name="types" value="${types }" />
									<input type="hidden" name="lender" value="${lender }" />
									 <input
										type="hidden" name="amount" value="${amount }" />
										
									<h5>Month 6</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>

								</div>
								<br>
							</div>
						</form>
					</div>


				</c:if>





				<c:if test="${dues=='2 months' }">



					<div class="service-grid-top">

						<div class="col-md-4 service-grid-1">
							<div class="service-grid-text">
								<form action="month" method="get">
									<input type="hidden" name="username" value="${username }" /> 
									<input type="hidden" name="lender" value="${lender }" />
									<input type="hidden" name="mstatus" value="month1" />
									<input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> 
									<input
										type="hidden" name="total_amount" value="${amount}" />
										
									<h5>Month 1</h5>
									<input type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br> <br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>
								</form>
							</div>
						</div>

					</div>

					<div class="service-grid-top">
						<form action="month" method="get">


							<div class="col-md-4 service-grid-1">
								<div class="service-grid-text">
									<h5>Month 2</h5>
									<input type="hidden" name="username" value="${username }" />
									<input type="hidden" name="lender" value="${lender }" />
									<input type="hidden" name="mstatus" value="month2" />
									 <input
										type="hidden" name="dues" value="${dues }" readonly="readonly" />
									<input type="hidden" name="types" value="${types }" /> <input
										type="hidden" name="total_amount" value="${amount }" /> 
										<input																				type="date" name="month" /> <br> <br> <input
										type="text" name="amount"> <br>
									<br>
									<div class="submit1">
										<input type="submit" value="Submit">
									</div>



								</div>
							</div>
						</form>
					</div>



				</c:if>









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