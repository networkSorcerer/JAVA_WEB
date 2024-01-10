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
		<script type = "text/javascript" src="../js/jquery-3.7.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#name").val("홍길동");
			});
		</script>
	</head>
	<body>
		<h2> include 액션 태그</h2>
		include.jsp 파일 시작 부분입니다 <br />
		include 태그는 페이지 속성 파일 결과를 태그 위치에 삽입합니다 <br/>
		<%-- <jsp:include page="sub.jsp"/> --%>
		
		<jsp:include page="sub.jsp">
			<jsp:param name="language" value="java"/>
		</jsp:include>
		include.jsp 파일 끝 부분입니다
	</body>
</html>