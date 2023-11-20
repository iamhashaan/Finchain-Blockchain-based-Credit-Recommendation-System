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
						<li><a href="#contact" class="scroll">Login</a></li>   -->	
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
				<h3>Due Details</h3>
				<h4>${dues}</h4>
				
			
				
			</div>
			<div class="contact-grids">
				
				<c:if test="${dues=='2 months' }">
			
			<form action="2month" method="post">
				<div class=" col-md-6 contact-form">
				
				<input type="hidden" name="username" value="${username }"/>
				<input type="hidden" name="dues" value="${dues }" readonly="readonly" />
				<input type="hidden" name="types" value="${types }" />
				<input type="hidden" name="amount" value="${amount }" />
			     <h5>Month 1</h5>
					<input type="date" name="month1"/>
					<br>
					<input type="text" name="amount1">
					
					
				</div>
				<div class=" col-md-6 contact-form">
					
							 <h5>Month 2</h5>
					<input type="date" name="month2"/>
					<br>
					<input type="text" name="amount2">
							
				</div>
				<div class="clearfix"></div>
				
				
				<div class="submit1">
							<input type="submit" value="Submit">
						</div>
						</form>
						</c:if>
						
						
						
						
						<c:if test="${dues=='6 months' }">
			
			<form action="6month" method="post">
				<div class=" col-md-6 contact-form">
				
				<input type="hidden" name="username" value="${username }"/>
				<input type="hidden" name="dues" value="${dues }" readonly="readonly" />
				<input type="hidden" name="types" value="${types }" />
				<input type="hidden" name="amount" value="${amount }" />
			        <h5>Month 1</h5>
					<input type="date" name="month1"/>
					<br>
					<input type="text" name="amount1">
					<br>
					<h5>Month 2</h5>
					<input type="date" name="month2"/>
					<br>
					<input type="text" name="amount2">
					<br>
					<h5>Month 3</h5>
					<input type="date" name="month3"/>
					<br>
					<input type="text" name="amount3">
					
				</div>
				<div class=" col-md-6 contact-form">
					
						<h5>Month 4</h5>
					<input type="date" name="month4"/>
					<br>
					<input type="text" name="amount4">
					<br>
					<h5>Month 5</h5>
					<input type="date" name="month5"/>
					<br>
					<input type="text" name="amount5">
					<br>
					<h5>Month 6</h5>
					<input type="date" name="month6"/>
					<br>
					<input type="text" name="amount6">	 
							
				</div>
				<div class="clearfix"></div>
				
				
				<div class="submit1">
							<input type="submit" value="Submit">
						</div>
						</form>
						</c:if>
						
						
						<c:if test="${dues=='10 months' }">
						
							<form action="10month" method="post">
				<div class=" col-md-6 contact-form">
				
				<input type="hidden" name="username" value="${username }"/>
				<input type="hidden" name="dues" value="${dues }" readonly="readonly" />
				<input type="hidden" name="types" value="${types }" />
				<input type="hidden" name="amount" value="${amount }" />
			        <h5>Month 1</h5>
					<input type="date" name="month1"/>
					<br>
					<input type="text" name="amount2">
					<br>
					<h5>Month 2</h5>
					<input type="date" name="month2"/>
					<br>
					<input type="text" name="amount2">
					<br>
					<h5>Month 3</h5>
					<input type="date" name="month3"/>
					<br>
					<input type="text" name="amount3">
					<br>
					<h5>Month 4</h5>
					<input type="date" name="month4"/>
					<br>
					<input type="text" name="amount4">
					<br>
					<h5>Month 5</h5>
					<input type="date" name="month5"/>
					<input type="text" name="amount5">
					<br>
				</div>
				<div class=" col-md-6 contact-form">
					
						<h5>Month 6</h5>
					<input type="date" name="month6"/>
					<br>
					<input type="text" name="amount6">
					<br>
					<h5>Month 7</h5>
					<input type="date" name="month7"/>
					<br>
					<input type="text" name="amount7">
					<br>
					<h5>Month 8</h5>
					<input type="date" name="month8"/>
					<br>
					<input type="text" name="amount8">
					<br>
					<h5>Month 9</h5>
					<input type="date" name="month9"/>
					<br>
					<input type="text" name="amount9">
					<br>
					<h5>Month 10</h5>
					<input type="date" name="month10"/>
					<br>
					<input type="text" name="amount10">	 
						</div>
				<div class="clearfix"></div>
				
				
				<div class="submit1">
							<input type="submit" value="Submit">
						</div>
						</form>
						</c:if>
					
					<c:if test="${dues=='12 months' }">
						
							<form action="12month" method="post">
				<div class=" col-md-6 contact-form">
				
				<input type="hidden" name="username" value="${username }"/>
				<input type="hidden" name="dues" value="${dues }" readonly="readonly" />
				<input type="hidden" name="types" value="${types }" />
				<input type="hidden" name="amount" value="${amount }" />
			        <h5>Month 1</h5>
					<input type="date" name="month1"/>
					<br>
					<input type="text" name="amount2">
					<br>
					<h5>Month 2</h5>
					<input type="date" name="month2"/>
					<br>
					<input type="text" name="amount2">
					<br>
					<h5>Month 3</h5>
					<input type="date" name="month3"/>
					<br>
					<input type="text" name="amount3">
					<br>
					<h5>Month 4</h5>
					<input type="date" name="month4"/>
					<br>
					<input type="text" name="amount4">
					<br>
					<h5>Month 5</h5>
					<input type="date" name="month5"/>
					<input type="text" name="amount5">
					<br>
					<h5>Month 6</h5>
					<input type="date" name="month6"/>
					<br>
					<input type="text" name="amount6">
					<br>
				</div>
				<div class=" col-md-6 contact-form">
					
						
					<h5>Month 7</h5>
					<input type="date" name="month7"/>
					<br>
					<input type="text" name="amount7">
					<br>
					<h5>Month 8</h5>
					<input type="date" name="month8"/>
					<br>
					<input type="text" name="amount8">
					<br>
					<h5>Month 9</h5>
					<input type="date" name="month9"/>
					<br>
					<input type="text" name="amount9">
					<br>
					<h5>Month 10</h5>
					<input type="date" name="month10"/>
					<br>
					<input type="text" name="amount10">	 
					<br>
					<h5>Month 11</h5>
					<input type="date" name="month11"/>
					<br>
					<input type="text" name="amount11">	 
					<br>
					<h5>Month 12</h5>
					<input type="date" name="month12"/>
					<br>
					<input type="text" name="amount12">	 
					
					
					
					
							
				</div>
				<div class="clearfix"></div>
				
				
				<div class="submit1">
							<input type="submit" value="Submit">
						</div>
						</form>
						</c:if>
						
						
						
						
						
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