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
		
		<style type = "text/css">
			hr{width:680px; display:inline-block; text-align:left;}
			#header > h2{color:#000099;}
			#copyright{color:#990000; font-weight:bold; display:block;}
		</style>
	</head>
	<body>
		<%@ include file ="header.jsp" %>
		<hr />
		<p>사이트의 본문 내용 </p>
		<hr />
		<%@ include file="footer.jsp" %>
	
	</body>
</html>