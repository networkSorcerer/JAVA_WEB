<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/WEB-INF/common/common.jsp" %>
    <style type = "text/css">
    	#content{resize : none;}
    </style>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		
		<title>Insert title here</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
	</head>
	<body>
		<div class ="container">
			<div class = "text- center"><h3>게시판 수정화면</h3></div>
				<form id="f_updateForm">
					<div class = "text-center"></div>
					<input type="hidden" name="num" id="num" value="${updateData.num}">
					<table class = "table table-bordered">
						<tr>
							<td class = "text-center">글번호</td>
							<td class = "text-center">${updateData.num }<span>(조회수 : ${updateData.readcnt })</span></td>
							<td class = "text-center">작성일</td>
							<td class = "text-start">${updateData.writeday }</td>
						</tr>
						<tr>
							<td class = "text-center">작성자</td>
							<td colspan="3" class ="text-start">${updateData.author }</td>
						</tr>
						<tr>
							<td class = "text-center">글제목</td>
							<td colspan = "3">
								<input type="text" name ="title" id="title" value="${updateData.title }" class="form-control"/>
								
							</td>
						</tr>
						<tr>
							<td class = "text-center">글내용</td>
							<td colspan="3">
								<textarea class ="form-control" name="content" id="content">${updateData.content}</textarea>
								
							</td>
						</tr>
						<tr>
							<td class = "text-center">비밀번호</td>
							<td colspan="3">
								<input type= "password" name = "passwd" id="passwd" class ="form-control" placeholder="기존 비밀번호라가 아니라 수정할 비밀번호를 입력해주세요"/>
								
							</td>
						</tr>
					</table>
					</form>	
			
			
			<div class = "text-end">
				<button type="button" id="boardUpdate" class="btn btn-primary btn-sm">수정</button>
				<button type="button" id="boardListBtn" class="btn btn-primary btn-sm">목록</button>
			</div>
		</div>
		<script src="/include/js/updateForm.js"></script>
	</body>
</html>