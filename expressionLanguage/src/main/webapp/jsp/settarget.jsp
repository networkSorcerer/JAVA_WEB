<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h2>JSTL Core Tag: set target</h2>
		<jsp: useBean  id = "oneday"  class="java.util.Date"/>
		<c:set target="${oneday}" property="year" value="2022"/>
		<p>\${oneday.year}=${oneday.year}</p>
		
		<jsp:useBean id="member" class="com.user.User"/>
		<c:set target="${member}" property="uname" value="홍길동"/>
		\${member.uname } = {member.uname}
		
		<c:set var="book" value="<%= new java.util.HashMap<String, String> ()%>"/>
		
		<c:set target="${book }" property="java" value="자바로 배우는 프로그래밍 기초"/>
		<c:set target="${book }" property="c" value="C로 배우는 프로그래밍 기초"/>
		<c:set target="${book}" property="jsp" value="JSP로 배우는 웹프로그래밍 기초"/>
		
		<p>\${book.java }=${book.java }</p>
		<p>\${book.c } = ${book.c }</p>
		<p>\${book.jsp } =${boo.jsp } </p>
	
	</body>
</html>