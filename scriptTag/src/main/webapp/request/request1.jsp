<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		<script src = "../js/jquery-3.7.1.min.js"></script>
		
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
		
			String name = request.getParameter("name");
			String birth = request.getParameter("birth");
		%>
		<fieldset>
			<legend>
				<strong>기술정보 이력서</strong>
			</legend>
		
		<table>
			<tr>
				<td class="t1">이름</td>
				<td class="t2">&nbsp;<%=name %></td>
			</tr>
			<tr>
				<td class="t1">생년월일</td>
				<td class="t2">&nbsp;<%=birth %></td>
			</tr>
		</table>
		</fieldset>
	</body>
</html>