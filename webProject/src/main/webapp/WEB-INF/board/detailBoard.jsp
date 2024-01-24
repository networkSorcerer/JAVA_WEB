<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/WEB-INF/common/common.jsp" %>
<style type="text/css">
	#pwdChk{visibility:hidden;}
	.table-height{height: 200px;}
</style>
	<body>
		<div class="container">
			<div class ="text-center"><h3>게시판 상세 페이지</h3></div>
			<%-- post 방식으로 전송시 반드시 form 태그 추가해 주어야 합니다 --%>
			<form name="f_data" id="f_data" method="post">
				<input type="hidden" name="num" value="${detail.num }">
			</form>
			
			<%-- ======비밀번호 확인 버튼 및 버튼 추가 시작 --%>
			<div class ="row text-center mb-2">
	
				<div id="pwdChk" class="col-md-9 text-start">	
					<form name="f_passwdCheck" id="f_passwdCheck" class="row g-3">

						<div class="col-auto">
							<label for="passwd" class="visually-hidden">비밀번호</label>
							<input type="password" class="form-control" name="" id="" placeholder="비밀번호 입력" />
						</div>
						<div class="col-auto">
							<button type="button" class="btn btn-primary btn-sm" id="">확인</button>
							<button type="button" class="btn btn-primary btn-sm" id="">취소</button>
						</div>
						<div class="col-auto">
							<span id="" class="align-middle"></span>
						</div>
					</form>				
				</div>
				

				<div class ="col-md-3 text-end">
					<button type="button" id="updateForm" class="btn btn-primary btn-sm">수정</button>
					<button type="button" id="boardDelete" class="btn btn-primary btn-sm">삭제</button>
					<button type="button" id="boardReply" class="btn btn-primary btn-sm">답변</button>
					<button type="button" id="boardListBtn" class="btn btn-primary btn-sm">목록</button>
				</div>
			</div>
			<%--===== 비밀번호 확인 버튼 및 버튼 추가 종료 ====== --%>
			<%-- =====상세 정보 보여주기 시작 ===== --%>
			<div class = "text-center">
			<table class="table table-bordered" border = 1>
				<tbody>
					<tr>
						<td class="col-md-3">글번호</td>
						<td class="col-md-3 text-start">${detail.num }<label>(조회수 : ${detail.readcnt })</label>
						<td class="col-md-3">작성일</td>
						<td class="col-md-3 text-start">${detail.writeday }</td>
					</tr>
					<tr>
						<td class="col-md-3">작성자</td>
						<td colspan="3" class="col-md-9 text-start">${detail.author }</td>
					</tr>
					<tr>
						<td class="col-md-3">글제목</td>
						<td colspan="3" class="col-md-9 text-start">${detail.title }</td>
					</tr>
					<tr class="table-height">
						<td class="text-valign">글내용</td>
						<td colspan="3" class="text-start">${detail.content }</td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>
		<script src="/include/js/detailBoard.js"></script>
	</body>
</html>