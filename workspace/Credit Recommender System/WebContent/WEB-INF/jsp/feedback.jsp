<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>





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
	background-color: #06807b;
	color: white;
}
</style>





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

						<!-- <li><a href="Income.jsp?param=${msg1}&type=${result}">Employment</a></li>

						<li><a href="#services" class="scroll">services</a></li> -->

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="logo">
		<a href="#"> <!--<i class="fa fa-inr" aria-hidden="true"></i>--> 
			 <span>Feedback</span>
		</a>
	</div>





<div class="container">
  <form action="addfeedback" method="get">
    <label for="fname">Borrower Name</label>
    <input type="text" id="fname"  value="${lender_name}" name="lender" readonly="readonly">

    <label for="lname">Lender Name</label>
    <input type="text" id="lname" value="${borrower_name}" name="borrower" readonly="readonly" >


    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>








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