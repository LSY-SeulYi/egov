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
      <div class="panel-body" method="read">
          <div class="form-group"><br>
          <label>번 호</label>
          <input class="form-control" name='no' value='<c:out value="${boardvo.no}"/>' readonly="readonly" size="45"/>
        </div><br>
        <div class="form-group">
          <label>제 목</label>
          <input class="form-control" name='title' value='<c:out value="${boardvo.title}"/>' readonly="readonly" size="45">
        </div><br>
        <div class="form-group">
          <label>내 용</label>
          <textarea class="form-control" rows="5" cols="54" name='content' readonly="readonly"><c:out value="${boardvo.content}" /></textarea>
        </div><br>
        <div class="form-group">
          <label>작성자</label>
          <input class="form-control" name='writer' value='<c:out value="${boardvo.writer}"/>' readonly="readonly" size="45">
        </div><br>
		<button data-oper='modify' class="btn btn-default">수정 하기</button>
		<button data-oper='list' class="btn btn-info">목록 보기</button>
		<form id='operForm' action="/board/modify" method="get">
		  <input type='hidden' id='no' name='no' value='<c:out value="${boardvo.no}"/>'>
		  <input type='hidden' name='pageNum' value='<c:out value="${paging.pageNum}"/>'>
		  <input type='hidden' name='amount' value='<c:out value="${paging.amount}"/>'>
		  <input type='hidden' name='keyword' value='<c:out value="${paging.keyword}"/>'>
		  <input type='hidden' name='type' value='<c:out value="${paging.type}"/>'>  
 		</form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
  var operForm = $("#operForm"); 
  $("button[data-oper='modify']").on("click", function(e){
    operForm.attr("action","/board/modify").submit();
  });
  $("button[data-oper='list']").on("click", function(e){
    operForm.find("#no").remove();
    operForm.attr("action","/board/list")
    operForm.submit();
  });  
});
</script>