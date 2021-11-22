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
li::marker {
    content: "★";
}
table{
	font-size:20px;
}
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
a{
	color:#0CD3A1;
}
</style>
				<div class='pull-right'>&nbsp;&nbsp;Page No
					<ul class="pagination" style="position:absolute">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous">&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="${pageMaker.firstPage -1}">Previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.firstPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.paging.pageNum == num ? "active":""} ">
								&nbsp;&nbsp;&nbsp;&nbsp;<a href="${num}">${num}</a>
							</li>
						</c:forEach><c:if test="${pageMaker.next}"><li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>
					</ul>
				</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body" align=center>
				<table class="table table-striped table-bordered table-hover" width="70%" height="50%" align=center border=5 style="border-color:#F7DDFB">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
						</tr>
					</thead>
          <c:forEach items="${list}" var="Board">
            <tr align=center>
              <td><c:out value="${Board.no}" /></td>
               <td>
                  <a class='move' href='<c:out value="${Board.no}"/>'>
                  <c:out value="${Board.title}" /></a>
              <td><c:out value="${Board.writer}" /></td>
              <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${Board.regdate}" /></td>
              <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${Board.updatedate}" /></td>
            </tr>
          </c:forEach>
				</table>
			<div class="panel-heading" align=center style="font-size:30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button id='regBtn' type="button" class="btn btn-xs pull-right">&nbsp;&nbsp;&nbsp;&nbsp;글 작성&nbsp;&nbsp;&nbsp;&nbsp;</button>
			</div>
				<div class='row'>
					<div class="col-lg-12">
						<form id='searchForm' action="/board/list" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.paging.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.paging.type eq 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.paging.type eq 'C'?'selected':''}"/>>내용</option>
								<option value="W"
									<c:out value="${pageMaker.paging.type eq 'W'?'selected':''}"/>>작성자</option>
								<option value="R"
									<c:out value="${pageMaker.paging.type eq 'R'?'selected':''}"/>>작성일</option>
								<option value="TC"
									<c:out value="${pageMaker.paging.type eq 'TC'?'selected':''}"/>>제목
									or 내용</option>
								<option value="TW"
									<c:out value="${pageMaker.paging.type eq 'TW'?'selected':''}"/>>제목
									or 작성자</option>
								<option value="TWC"
									<c:out value="${pageMaker.paging.type eq 'TWC'?'selected':''}"/>>제목
									or 내용 or 작성자</option>
							</select> <input type='text' name='keyword'
								value='<c:out value="${pageMaker.paging.keyword}"/>' /> <input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.paging.pageNum}"/>' /> <input
								type='hidden' name='amount'
								value='<c:out value="${pageMaker.paging.amount}"/>' />
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>
			</div>
			<form id='actionForm' action="/board/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.paging.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.paging.amount}'>
				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.paging.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.paging.keyword }"/>'>
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = '<c:out value="${result}"/>';
						checkModal(result);
						history.replaceState({}, null, null);
						function checkModal(result) {
							if (result === '' || history.state) {
								return;
							}
						}
						$("#regBtn").on("click", function() {
							self.location = "/board/register";
						});
						var actionForm = $("#actionForm");
						$(".paginate_button a").on(
								"click",
								function(e) {
									e.preventDefault();
									console.log('click');
									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});
						$(".move")
								.on(
										"click",
										function(e) {
											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='no' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/board/get");
											actionForm.submit();
										});
						var searchForm = $("#searchForm");
						$("#searchForm button").on(
								"click",
								function(e) {
									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}
									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 입력하세요");
										return false;
									}
									searchForm.find("input[name='pageNum']")
											.val("1");
									e.preventDefault();
									searchForm.submit();
								});
					});
</script>