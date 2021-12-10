<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP Notice Board</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<style>
.carousel-indicators li{
	background-color:black;
}
</style>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}
%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<a class="navbar-brand" href="main.jsp"><img src="images/캡처.jpg"></a>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><br>
			<ul class="nav navbar-nav" style="font-size:50px;">
				<li>&nbsp;</li>
				<li><a href="main.jsp">&nbsp;Home&nbsp;</a></li>
				<li class="active"><a href="menu.jsp">&nbsp;Menu&nbsp;</a></li>
				<li><a href="bbs.jsp">&nbsp;Notice Board&nbsp;</a></li>
			</ul>
			<%
				if(userID == null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-size:50px;">Administration<span class="caret"></span></a>
					<ul class="dropdown-menu" style="font-size:30px;">
						<li><a href="login.jsp">Login</a></li>
						<li><a href="join.jsp">Join</a></li>
					</ul>
				</li>
			</ul>
			<%
				}else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-size:50px;">Administration<span class="caret"></span></a>
					<ul class="dropdown-menu" style="font-size:30px;">
						<li><a href="logoutAction.jsp">Logout</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
<br><br><br><br>
	<div class="container" align="center">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
				<li data-target="#myCarousel" data-slide-to="6"></li>
				<li data-target="#myCarousel" data-slide-to="7"></li>
				<li data-target="#myCarousel" data-slide-to="8"></li>
				<li data-target="#myCarousel" data-slide-to="9"></li>
				<li data-target="#myCarousel" data-slide-to="10"></li>
			</ol>
			<div class="carousel-inner" align="center"><br><br>
				<div class="item active">
					<img src="images/양념.jpg">
				</div>
				<div class="item">
					<img src="images/후라이드.jpg">
				</div>
				<div class="item">
					<img src="images/반반.jpg">
				</div>
				<div class="item">
					<img src="images/간장.jpg">
				</div>
				<div class="item">
					<img src="images/마늘.jpg">
				</div>
				<div class="item">
					<img src="images/매운양념.jpg">
				</div>
				<div class="item">
					<img src="images/매운후라이드.jpg">
				</div>
				<div class="item">
					<img src="images/파닭.jpg">
				</div>
				<div class="item">
					<img src="images/핫데블.jpg">
				</div>
				<div class="item">
					<img src="images/치즈볼.jpg">
				</div>
				<div class="item">
					<img src="images/핫도그.jpg">
				</div>
			</div><br><br>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div><br><br><br><br>
</body>
</html>