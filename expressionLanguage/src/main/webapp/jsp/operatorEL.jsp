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
		
		
	</head>
	<body>
		<h3>표현언어 = 값</h3>
		<ul>
			<li>\${문자열} = ${"JAVA"}</li>
			<li>\${'1'+1 } =${'1' +1 }</li>
			<li>\${3 += "일" } = ${3 +="일" }</li>
			<li>\${ 2+ 5} = ${ 2 + 5 }</li>
			<li>\${ 4 / 5} = ${ 4 / 5 }</li>
			
			<li>\${7 mod 5} = ${ 7 mod 5 }</li>
			<li>\${ 2 &lt; 3 } = ${ 2 < 3 }</li>
			<li>\${3.1 le 3.2} = ${3.1 le 3.2 }</li>
			<li>\${3 lt 5 and 8 gt 10 } = ${ 3 lt 5 and 8 gt 10 }</li>
			<li>\${ header["host"]} = ${header["host"] }</li>
			
		</ul>
		
		<h3>표현 언어 연산자와 empty 확인</h3>
		<p>\${null } = ${null }</p>
		<p>\${n} = ${n}</p>
		
		<p>\${empty null } = ${empty null }</p>
		<p>\${empty n } = ${empty n }</p>
		<!-- =request.getParameter("user") 같은 표현  -->
		<p>\${param.user } = ${param.user}</p>
		<p>\${empty param.user} = ${empty param.user}</p>
		<!-- String [] message = request.getParameterValues("msg") 같은 표현 -->
		<p>\${paramValue.msg} = ${paramValues.msg[0]} ${paramValues.msg[1]}</p>
		<p>\${empty paramValues.msg } = ${empty paramValues.msg }</p>		
	</body>
</html>