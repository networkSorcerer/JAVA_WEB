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
		
		<title>include 예제</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		<script src="/servletExample/js/jquery-3.7.1.min.js"></script>
		
	</head>
	<body>
		<h3>include 액션 태그 예제</h3>
		
		<h4>각 나라의 감사 인사말입니다</h4>
		<p>
			한국어 : 
			<jsp:include page="greeting.jsp">
				<jsp:param name="country" value="korea"/>
			</jsp:include>
		</p>
		
		<p>
			영어 : 
			<jsp:include page="greeting.jsp">
				<jsp:param name="country" value="english"/>
			</jsp:include>
		</p>
		
		<p>
			일본어 : 
			<jsp:include page="greeting.jsp">
				<jsp:param name="country" value="japan"/>
			</jsp:include>
		</p>
	</body>
</html>