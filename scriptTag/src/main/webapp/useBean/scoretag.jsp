<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id= "score" class="com.javabean.ScoreBean" scope="page"/>
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
		<h3>JavaBeans를 이용한 학생의 이름과 성적의 젖아과 조회 예제</h3>
		<% request.setCharacterEncoding("UTF-8"); %>
		<hr/>
		<h4>이름과 성적을 JavaBeans ScoreBean에 직접 저장</h4>
		<p>
			이름 : 홍길동, 성적 : 85
		</p>
		<jsp:setProperty name = "score" property="name" value="홍길동"/>
		<jsp:setProperty name = "score" property="point" value="85"/>
		<hr/>
		
		<h4>폼에서 전달받은 이름과 성적을 JavaBeans ScoreBean에 저장</h4>
		value="<%= request.getParameter(\"name\") %>" />
		<jsp:setProperty name ="score" property="point"
		value="<%= Integer.parseInt(request.getParameter(\"point\")) %>"/>
		
		<jsp:setProperty name ="score" property="name" param="name "/>
		<jsp:setProperty name = "score" property="point" param="point"/>
		
		클라이언트로 전송된 name명이 필드의 값과 동일하다면 param 속성을 생략할수있다
		<jsp:setProperty name = "score" property = "name"/>
		<jsp:setProperty name = "score" property="point"/>
		
		<jsp:setProperty name = "score" property="*"/>
		
		<h4>JavaBeans ScoreBean에 저장된 정보를 조회 출력</h4>
		
		<p>
			out.print(score.getName());과 같은 표현
			이름 : <jsp:getProperty name = "score" property="name" /><br/>
			성적 : <jsp:getProperty name = "score" property="point"/><br/>
		</p>
	</body>
</html>