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
        <form role="form" action="/board/register" method="post">
          <div class="form-group">
            <label>제 목</label> <input class="form-control" name='title' size="45">
          </div><br>
          <div class="form-group">
            <label>내 용</label>
            <textarea class="form-control" rows="5" cols="54" name='content'></textarea>
          </div><br>
          <div class="form-group">
            <label>작성자</label> <input class="form-control" name='writer' size="45">
          </div><br>
          <button type="submit" class="btn btn-default">글 작성</button>
          <button type="reset" class="btn btn-default">다시 작성</button>
        </form>
        <form role="form" action="/board/list" method="get">
        	<button type="submit" class="btn btn-info">목록 보기</button>
        </form>
      </div>
    </div>
  </div>
</div>