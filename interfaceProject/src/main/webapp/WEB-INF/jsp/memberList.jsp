<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c"  uri ="http://java.sun.com/jsp/jstl/core" %>
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
		<h1>회원 조회</h1>
		<table border = "1">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test = "${not empty memberList }">
						<c:forEach var = "member" items ="${memberList }">
							<tr>
								<td>${member.userNo }</td>
								<th>${member.userId }</th>
								<th>${member.userName }</th>
								<th>${member.userAddr }</th>
								<th>${member.regDate }</th>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan = "5" >회원정보가 존재하지 않습니다 </td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</body>
</html>