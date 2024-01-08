<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("score");
	int score = 0;
	if(data != null) {
		score = Integer.parseInt(data);
	}
%>
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
			String hakjum = "";
			if (score >=90 && score <=100) {
				hakjum = "A";
			} else if (score >= 80) {
				hakjum = "B";
			} else if (score >= 70) {
				hakjum = "C";
			} else if (score >= 60) {
				hakjum = "D";
			} else {
				hakjum = "F";
			}
		%>
		<div>입력한 점수는 <%= score %>입니다</div>
		<div>학점은 <%=hakjum %>입니다</div>
	</body>
</html>