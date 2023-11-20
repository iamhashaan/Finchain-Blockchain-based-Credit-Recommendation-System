<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>Corporate Bank a Banking Category Bootstrap responsive Website Template | Home :: XXlayouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- .css files -->
	<link href="${pageContext.request.contextPath}/resources/css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->
	
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

<style>
* {
  box-sizing: border-box;
}

.zoom {
 
 
  transition: transform .2s;
  
  margin: 0 auto;
}

.zoom:hover {
  -ms-transform: scale(2.0); /* IE 9 */
  -webkit-transform: scale(2.0); /* Safari 3-8 */
  transform: scale(2.0); 
}
</style>
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
	<div class="top-main">
		<div class="number">
			<h3><i class="fa fa-phone" aria-hidden="true"></i> +91 080 987 6541</h3>
			<div class="clearfix"></div>
		</div>
		<div class="social-icons">
		<ul class="top-icons">
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
		</ul>
		<div class="form-top">
		  <form action="#" method="post" class="navbar-form navbar-left">
			<div class="form-group">
				<input type="search" class="form-control" placeholder="Search">
			</div>
				<button type="submit" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
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
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							
							<li><a href="index.jsp" class="scroll">home</a></li>
							
							<!-- <li><a href="Income.jsp?param=${msg1}&type=${result}" >Employment</a></li>
						
							<li><a href="#services" class="scroll">services</a></li> -->
							
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="logo">
			<a href="index.html"><!--<i class="fa fa-inr" aria-hidden="true"></i>-->prospective lenders <span>Details</span></a>
		</div>
	



<!-- services -->
<section class="services" id="services">
	<div class="container">
		<div class="services-heading">
			<h3>Government Issued ID</h3>
		</div>
		<div class="service-grids">
			<div class="service-grid-top">
			<c:forEach var="plist" items="${plist }">
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div   class="zoom">
							<img src="${pageContext.request.contextPath}/resources/images/Uploaded_Image/Aadhar_Image/${plist.image}" alt=" " width="200" />
						<h4>${plist.aadharno }</h4>
						</div>
						</div>
				</div>
				</c:forEach>
				<c:forEach var="plist" items="${plist }">
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div  class="zoom">
							<img src="${pageContext.request.contextPath}/resources/images/Uploaded_Image/Pan_Image/${plist.image}" alt=" " width="200" />
						<h4>${plist.panno }</h4>
						</div>
						</div>
				</div>
				</c:forEach>
				<c:forEach var="plist" items="${plist }">
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div  class="zoom">
							<img src="${pageContext.request.contextPath}/resources/images/Uploaded_Image/Profile_Image/${plist.image}" alt=" " width="200" />
						<h4>${plist.username }</h4>
						</div>
						</div>
				</div>
				</c:forEach>
				
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</section>
<!-- //services -->



<section class="copyright">
	<div class="agileits_copyright text-center">
			<p> All rights reserved | Design by <a href="//w3layouts.com/" class="w3_agile">XXlayouts</a></p>
	</div>
</section>
<!-- //copyright -->

	<script src="${pageContext.request.contextPath}/resources/js/jarallax.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
	
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
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="${pageContext.request.contextPath}/resources/js/bars.js"></script>
</body>
<!-- //Body -->
</html>
<!-- //html -->