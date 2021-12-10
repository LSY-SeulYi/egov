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
			<a class="navbar-brand" href="main.jsp"><img src="images/캡처.jpg"></a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"><br>
			<ul class="nav navbar-nav" style="font-size:50px;">
				<li>&nbsp;</li>
				<li><a href="main.jsp">&nbsp;Home&nbsp;</a></li>
				<li><a href="menu.jsp">&nbsp;Menu&nbsp;</a></li>
				<li class="active"><a href="bbs.jsp">&nbsp;Notice Board&nbsp;</a></li>
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
	<div class="container" style="color:white;">
		<div class="row">
			<form method="post" action="writeAction.jsp">
				<table class="table table-striped" style="text-align:center; font-size:50px; border:3px solid #134E22">
					<thead>
						<tr>
							<th colspan="2" style="background-color:#134E22; text-align:center;">Notice Board Write</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="TITLE" name="bbsTitle" maxlength="50" style="font-size:40px;"></td>
						</tr>
						<tr>
							<td><textarea type="text" class="form-control" placeholder="CONTENT" name="bbsContent" maxlength="2500" style="height:400px; font-size:40px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="btn btn-primary pull-right" value="WRITE" style="width:150px; font-size:30px;">
			</form>
		</div>
	</div>
</body>
</html>