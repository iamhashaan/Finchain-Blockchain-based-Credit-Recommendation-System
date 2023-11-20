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
	href="${pageContext.request.contextPath}/resources/css/NewFile.css"
	type="text/css" media="all" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" media="all" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- //.css files -->
<!-- Default-JavaScript-File -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->

<!-- //fonts -->
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
						<li><a href="#index.html" class="scroll">home</a></li>
						<!-- <li><a href="#about" class="scroll">about</a></li>
						<li><a href="#services" class="scroll">services</a></li>
						<li><a href="#skills" class="scroll">skills</a></li>
						<li><a href="#team" class="scroll">team</a></li>
						<li><a href="#payment" class="scroll">payment</a></li>
						<li><a href="#blog" class="scroll">blog</a></li>
						<li><a href="#contact" class="scroll">Login</a></li> -->
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="logo">
		<a href="index.html"> <!--<i class="fa fa-inr" aria-hidden="true"></i>-->Corporate
			<span>bank</span>
		</a>
	</div>
	<!-- //Top-Bar -->




	<!-- //contact -->
	<section class="contact" id="contact">
		<div class="container">
			<div class="contact-heading">
				<h3>Income Details</h3>
			</div>
			<div class="contact-grids">
			<%
			
			String ms=request.getParameter("param");
						System.out.println(ms);
						
			String type=request.getParameter("type");	
			System.out.println(type);
			%>
			
			
			<form action="income" method="post">
				<div class=" col-md-6 contact-form">
					
					<input type="hidden" value="<%=ms%>" name="username">
					<input type="hidden" value="<%=type%>" name="type">
					
						<input type="text" placeholder="Source Of Income" required="required" name="income" /> 
						<br> 
						 <input type="text"placeholder="Monthly Income" required="required" 
							name="month" /> 
							<br>
							
						 <input type="text"placeholder="Annual Income" required="required" 
							name="annual" /> 
						
					
				</div>
				<div class=" col-md-6 contact-form">
					<input type="text" placeholder="Employer's Name" required="required" name="ename" /> 
						<br> 
						 <input type="text"placeholder="Employer's Phone" required="required" 
							name="ephone" /> 
							<br>
							
						 <input type="text"placeholder="Company Name" required="required" 
							name="company" /> 
				</div>
				<div class="clearfix"></div>
				
				
				<div class="submit1">
							<input type="submit" value="Submit">
						</div>
						</form>
			</div>
			
			
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	


	<script
		src="${pageContext.request.contextPath}/resources/js/jarallax.js"></script>

	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 10,
			imgHeight : 10
		})
	</script>
	

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/easing.js"></script>

	<!-- here stars scrolling icon -->
	


	
	
	
	



















	<!-- //here ends scrolling icon -->
	<script src="${pageContext.request.contextPath}/resources/js/bars.js"></script>
</body>
<!-- //Body -->
</html>
<!-- //html -->