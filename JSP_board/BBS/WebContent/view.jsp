<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.BbsVO" %>
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
	int bbsID = 0;
	if(request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	BbsVO bbs = new BbsDAO().getBbs(bbsID);
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
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center; border:3px solid #134E22">
				<thead style="color:white; font-size:50px;">
					<tr>
						<th colspan="3" style="background-color:#134E22; text-align:center;">Notice Board Read</th>
					</tr>
				</thead>
				<tbody style="color:#555555; font-size:40px;">
					<tr>
						<td style="width:20%;">TITLE</td>
						<td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll("<", "&rt;") %></td>
					</tr>
					<tr>
						<td>WRITER</td>
						<td colspan="2"><%= bbs.getUserID() %></td>
					</tr>
					<tr>
						<td>DATE</td>
						<td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11,13)+"시"+bbs.getBbsDate().substring(14,16)+"분" %></td>
					</tr>
					<tr>
						<td>CONTENT</td>
						<td colspan="2" style="min-height:200px; text-align:left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll("<", "&rt;") %></td>
					</tr>
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-primary" style="width:150px; font-size:30px;">LIST</a>
			<%
				if(userID != null && userID.equals(bbs.getUserID())){
			%>
				<a href="update.jsp?bbsID=<%=bbsID %>" class = "btn btn-primary" style="width:150px; font-size:30px;">MODIFY</a>
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%=bbsID %>" class = "btn btn-primary" style="width:150px; font-size:30px;">DELETE</a>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>