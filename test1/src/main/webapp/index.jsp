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
		<%-- <script src="<c:url value='/WEB-INF/js/jquery-3.7.1.min.js' />"></script> --%>
		<script src="/test1/js/jquery-3.7.1.min.js"></script>
		<script src="/test1/js/subjectSearch.js"></script>
		<script src="/test1/js/common.js"></script>	
	</head>
	<body>
		<h1>회원 정보 조회 (회원 번호 검색)</h1><br/>
		<form id="form">
			<input type ="text" name="number" id="number" placeholder="회원 번호 입력">
			<button type ="submit" id="searchBtn">조회</button>
		</form>
	</body>
</html>