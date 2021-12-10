<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="bbs.jsp">&nbsp;Notice Board&nbsp;</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-size:50px;">Connect<span class="caret"></span></a>
					<ul class="dropdown-menu"  style="font-size:30px;">
						<li><a href="login.jsp">Login</a></li>
						<li class="active"><a href="join.jsp">Join</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top:20px;">
				<form method="post" action="joinAction.jsp">
					<h1 style="text-align:center;">Join Page</h1>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" name="userID" maxlength=20px style="height:43px; font-size:26px;">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="PASSWORD" name="userPassword" maxlength=20px style="height:43px; font-size:26px;">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="NAME" name="userName" maxlength=20px style="height:43px; font-size:26px;">
					</div>
					<div class="form-group" style="text-align:center;" >
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active" style="width:100px; font-size:25px;">
								<input type="radio" name="userGender" autocomplete="off" value="MALE" checked >MALE
							</label>
							<label class="btn btn-primary" style="width:100px; font-size:25px;">
								<input type="radio" name="userGender" autocomplete="off" value="FEMALE" checked>FEMALE
							</label>
						</div>
					</div>
					<div class="form-roup">
						<input type="email" class="form-control" placeholder="EMAIL" name="userEmail" maxlength="20" style="height:43px; font-size:26px;">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="JOIN" style="height:43px; font-size:26px;">
				</form>
			</div>
		</div>
	</div>
</body>
</html>