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
		<h2>JSTL Core Tag : set </h2>
		
		<c:set var ="setStr" value="set Tag 테스트입니다" scope="page"/>
		\${pageScope.setStr } = ${pageScope.setStr } <br>
		
		<c:set var ="n">
			24
		</c:set>
		\${n } = ${n }</br>
		
		<c:set var="d">
			31.54
		</c:set>
		\${d } ={d} <br>
		\${n + d } =${n+d }<br>
		
		<c:set var ="b" value ="true"/>
		\${!b } = ${!b }<br>
		
		<c:set var="str" value="Hello set Tag!!!" scope="session"/>
		\${str } =${str} <br>
		
		<c:remove var="str" scope="session"/>
		\${str }=${str }<br>
	</body>
</html>