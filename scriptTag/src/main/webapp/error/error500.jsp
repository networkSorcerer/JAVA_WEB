<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage ="true" %>
<!-- 에러 500일때는 내부서버 오류로 exception이 처리되는데 
404는 아예 파일이 없는 것이기 때문에 처리되지 않음  -->
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
	<div>
		<p><strong>내부 서버오류입니다</strong><br/>
		빠른 시간 내에 문제를 해결하도록 하겠습니다</p>
		<p><img src="../image/error.jpg">
	</div>
	<div id="msgView">
	<ul>
		<li>
			<label>에러 타입 : </label>
			<%= exception.getClass().getName() %>
		</li>
		<li>
			<label>에러 내용 : </label>
			<%= exception.toString() %>
		</li>
	</ul>
	</div>
	</body>
</html>