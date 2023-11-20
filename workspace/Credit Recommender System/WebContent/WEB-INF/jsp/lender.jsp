<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Corporate Bank a Banking Category Bootstrap responsive
	Website Template | Home :: XXlayouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords"
	content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>


<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 50%;
  padding: 0 5px;
}

.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 10px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #444;
  color: white;
}

.fa {font-size:30px;}
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
						<li><a href="#index.html" class="scroll">home</a></li>
					<!-- 	<li><a href="#about" class="scroll">about</a></li>
						<li><a href="#services" class="scroll">services</a></li> -->
						<li><a href="Employment.jsp?param=${msg1}&type=${result}" >Borrowers</a></li>
						
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


<h4 style="color: red;" align="center">${status}</h4>

	<!-- //contact -->
	<section class="contact" id="contact">
		<div class="container">
			<div class="contact-heading">
			
			</div>
			<div class="contact-grids">
				<div class=" col-md-6 contact-form">

					<div class="row" align="center">
  <div class="column ">
    <div class="card">
      <p><i class="fa fa-user"></i></p>
    
<%--       <a href="RequestedUsers/${msg1}/${result}">Requested Users</a> --%>


<a href="Takeaction/${msg1 }/${result}" style="color: white; font-weight: bold;">Requested Users</a>
    </div>
  </div>
  
  
  
  <div class="column ">
    <div class="card">
      <p><i class="fa fa-user"></i></p>
    
<%--       <a href="RequestedUsers/${msg1}/${result}">Requested Users</a> --%>


<a href="RequestedUsers/${msg1 }/${result}" style="color: white; font-weight: bold;">TakeAction</a>
    </div>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
 
  
  
  <div class="column">
    <div class="card">
      <p><i class="fa fa-check"></i></p>
      
<a href="LendMoney/${msg1 }/${result}" style="color: white; font-weight: bold;">Lend Money</a>
    </div>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <div class="column ">
    <div class="card">
      <p><i class="fa fa-user"></i></p>
    
<%--       <a href="RequestedUsers/${msg1}/${result}">Requested Users</a> --%>


<a href="LendingHistory/${msg1 }/${result}" style="color: white; font-weight: bold;">Lending History</a>
    </div>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  
  <div class="column">
    <div class="card">
      <p><i class="fa fa-calendar"></i></p>
     
     <a href="PaidUsers/${msg1 }/${result}" style="color: white; font-weight: bold;">Monthly Payment</a>

    </div>
  </div>
  
  </div>
					
				</div>
				<div class=" col-md-6 map">
					<img
						src="${pageContext.request.contextPath}/resources/images/lender.png" width="450"></img>
				</div>
				<div class="clearfix"></div>
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