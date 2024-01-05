<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String data = request.getParameter("score");
	int score = 0;
	if(data != null) {
		score = Integer.parseInt(data);
	}
%>  
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
		<%
			String hakjum="";
			if(score>=90 && score<=100) {
				hakjum = "A";
			} else if(score >= 80) {
				hakjum = "B";
			} else if (score >= 70) {
				hakjum="C";
			} else if (score >=60) {
				hakjum = "D";
			} else {
				hakjum = "F";
			}
		%>
		<div>입력한 점수는 <%= score %>입니다<div>
		<div>학점은 <%=hakjum %>입니다</div>	
	</body>
</html>