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
		<h3>JSTL Core Tag: if</h3>
		
		<c:set var="num" value="95"/>
		접수 ${num}은
		<c:if test="${num > 60 }" var = "result">
			합격입니다 <br/>
		</c:if>
		if 문의 결과 : ${result }<br/>
		
		<c:set var="number" value="4"/>
		숫자 ${number } 은
		<c:if test="${number mod 2 == 0 }">
			짝수
		</c:if>
		<c:if test="${number mod 2 != 0 }">
			홀수
		</c:if>
		입니다 <br/>
		
		<h3>JSTL Core Tag : choose</h3>
		
		<jsp: useBean id="today" value="<%= new java.util.Date() %>"/>
		<c:choose>
			<c:when test="${today.hours < 12 }">
				Good morning!
			</c:when>
			<c:when test="${today.hours < 16 }">
				Good afternoon!
			</c:when>
			<c:otherwise>
				Good evening!
			</c:otherwise>
		</c:choose>	
		<hr/>
		
		<c:set var="jumsu" value ="${param.jumsu }"/>
		접수 : <c: out value="${jumsu}" default="0"/> 점 / 학점 :
			<c:choose>
				<c:when test="${jumsu >= 90 }">
				A
				</c:when>
				<c:when test="${jumsu >= 80 }">
				B
				</c:when>
				<c:when test="${jumsu >= 70 }">
				C
				</c:when>
				<c:when test="${jumsu >= 60 }">
				D
				</c:when>
				<c:otherwise>
				F
				</c:otherwise>
			</c:choose>	
	</body>
</html>