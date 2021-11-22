<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header" align=center>게시판</h1>
  </div>
</div>
<style>
div{
	font-size:20px;
}
input{
	font-size:15px;
}
.btn{
	background-color:#F7DDFB;
	border-color:#AF4EF9;
}
</style>
<div class="row" align=center>
  <div class="col-lg-12">
    <div class="panel panel-default">
      <div class="panel-body">
      <form role="form" action="/board/modify" method="post">
        <input type='hidden' name='pageNum' value='<c:out value="${paging.pageNum}"/>'>
        <input type='hidden' name='amount' value='<c:out value="${paging.amount}"/>'>
	    <input type='hidden' name='type' value='<c:out value="${paging.type}"/>'>
		<input type='hidden' name='keyword' value='<c:out value="${paging.keyword}"/>'>
<div class="form-group">
  <label>번 호</label> 
  <input class="form-control" name='no' 
     value='<c:out value="${boardvo.no}"/>' readonly="readonly" size="45">
</div><br>
<div class="form-group">
  <label>제 목</label> 
  <input class="form-control" name='title' 
    value='<c:out value="${boardvo.title}"/>' size="45">
</div><br>
<div class="form-group">
  <label>내 용</label>
  <textarea class="form-control" rows="3" cols="55" name='content' ><c:out value="${boardvo.content}"/></textarea>
</div><br>
<div class="form-group">
  <label>작성자</label> 
  <input class="form-control" name='writer'
    value='<c:out value="${boardvo.writer}"/>' readonly="readonly" size="45">            
</div><br>
<div class="form-group">
  <label>작성일</label> 
  <input class="form-control" name='regdate'
    value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${boardvo.regdate}"/>'  readonly="readonly" size="45">            
</div><br>
<div class="form-group">
  <label>수정일</label> 
  <input class="form-control" name='updatedate'
    value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${boardvo.updatedate}"/>'  readonly="readonly" size="45">            
</div><br>
  <button type="submit" data-oper='modify' class="btn btn-default">수정 하기</button>
  <button type="submit" data-oper='remove' class="btn btn-danger">삭제 하기</button>
  <button type="submit" data-oper='list' class="btn btn-info">목록 보기</button>
</form>
      </div>
    </div>
  </div>
</div>