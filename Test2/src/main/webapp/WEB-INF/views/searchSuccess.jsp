<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%--   <%@ page import ="edu.kh.test.user.model.vo.UserDTO" %>
    <%@ 
    	UserDTO vo = (UserDTO) request.getAttribute("userDTO");
     %> --%>
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
		<h1>회원 정보</h1>
		<table border="1">
			<tr>
				<td>회원번호</td>
				<td>회원아이디</td>
				<td>회원이름</td>
				<td>회원나이</td>
			</tr>
			<%-- <tr>
				<td><%=vo.getUserNo()%>  </td>
				<td><%=vo.getUserId()%> </td>
				<td><%=vo.getUserName()%> </td>
				<td><%=vo.getUserAge()%> </td>
			</tr> --%>
			<tr>
				<td>${ userDTO.userNo }  </td>
				<td>${ userDTO.userId }</td>
				<td>${ userDTO.userName }</td>
				<td>${ userDTO.userAge }</td>
			</tr>
		</table>
		<a href="${pageContext.request.contextPath }">메인페이지로 돌아가기</a>
	</body>
</html>