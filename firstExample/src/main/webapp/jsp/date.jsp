<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date, java.text.SimpleDateFormat" %>
<%@ page import = "example.Clock" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		<!--viewport : 화면에 보이는 영역을 제어하는 기술. width는 device-width로 설정(브라우저 너비를 장치 너비에 맞추어 표시). initial-scale는 초기비율(보이는 영역과 웹 페이지를 맞춤). user-scalable는 사용자가 화면축소를 하지 못하도록 설정.-->
		
		<title>Insert title here</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		
	</head>
	<body>
	<%= java.time.LocalDateTime.now() %>
	
	<%
		out.print("<h1>Hello~~JSP~~!</h1>");
		out.print("<p>처음으로 생성한 JSP파일입니다</p>");
	%>
	
	<%
		Date nowDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
		String formatDate = dateFormat.format(nowDate);
	
	%>
	
	<p>일반적인 JSP 페이지의 형태로 아래와 같이 현재 날짜를 제공합니다 <br/>
		현재 날짜는  <%= formatDate %> 입니다
	</p>
	
	<%
		//example 패키지의 Clock 클래스를 생성하여 오늘 날짜와 시간을 출력해주세요
		Clock clock = new Clock();
		String data = clock.now();
		//out.print("현재 날짜는" + data + " 입니다 ");
	%>
	<p>현재 날짜는 <%=data %></p>
	</body>
</html>