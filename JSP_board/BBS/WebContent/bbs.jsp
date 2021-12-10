<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.BbsVO" %>
<%@ page import="java.util.ArrayList" %>
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
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
						<th style="background-color:#134E22; text-align:center;">No</th>
						<th style="background-color:#134E22; text-align:center;">Title</th>
						<th style="background-color:#134E22; text-align:center;">Writer</th>
						<th style="background-color:#134E22; text-align:center;">Date</th>
					</tr>
				</thead>
				<tbody style="color:#555555; font-size:40px;">
				<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<BbsVO> list = bbsDAO.getList(pageNumber);
					for(int i=0; i < list.size(); i++){
				%>
					<tr>
						<td><%=list.get(i).getBbsID() %></td>
						<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID() %>"><%=list.get(i).getBbsTitle() %></a></td>
						<td><%=list.get(i).getUserID() %></td>
						<td><%=list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11,13)+"시"+list.get(i).getBbsDate().substring(14,16)+"분" %></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1){
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>" class="btn btn-success btn-arraw-left" style="width:150px; font-size:30px;">Previous</a>
			<%
				} if(bbsDAO.nextPage(pageNumber + 1)) {
			%>
				<a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>" class="btn btn-success btn-arraw-left" style="width:150px; font-size:30px;">Next</a>
			<%
				}
			%>
			<a href="write.jsp" class="btn btn-primary pull-right" style="width:150px; font-size:30px;">Write</a>
		</div>
	</div>
</body>
</html>