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
		<script src = "../js/common.js"></script>
		<script src = "../js/colordate.js"></script>
	</head>
	<body>
	<% if (request.getMethod().equals("GET")) { %>
    <h2>원하는 색상과 날짜를 선택하세요</h2>
    <form id="form">
        <div>색상 : <input type="color" name="fcolor" id="fcolor"/></div>
        <div>날짜 : <input type="date" name="fdate" id="fdate"/></div>
        <button type="button" id="sendBtn">전송</button>
    </form>
<% } else { %>
    <script type="text/javascript">
        $(function(){
            $("span").css("color","<%= request.getParameter("fcolor") %>");
        });						
    </script>
    <h2>선택 날짜는<span><%= request.getParameter("fdate") %></span>이네요</h2>
<% } %>
	
	</body>
</html>