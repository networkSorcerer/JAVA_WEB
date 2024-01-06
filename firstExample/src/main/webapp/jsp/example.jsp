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
		<!--viewport : 화면에 보이는 영역을 제어하는 기술. width는 device-width로 설정(브라우저 너비를 장치 너비에 맞추어 표시). initial-scale는 초기비율(보이는 영역과 웹 페이지를 맞춤). user-scalable는 사용자가 화면축소를 하지 못하도록 설정.-->
		
		<title>Insert title here</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		
	</head>
	<body>
	<h1>[파일명은 example.jsp]</h1>
	
	<%
		out.print("<h3>숫자를 저장한 변수 3개 (7,5,9)를 정의하고 최대값 구하기 </h3>");
		int number1 =7, number2 = 5, number3 =9;
		int maximumValue = number1;
		
		if(number2 > maximumValue)
			maximumValue = number2;
		
		if(number3 > maximumValue)
			maximumValue = number3;
		
		out.println("<p>");
		out.println("최대 값은 : " + maximumValue);
		out.println("</p>");
		
		out.print("<h3>배열의 값 (12, 26, 68, 98,76, 54, 8, 6, 4) 중 최대값과 최소값 구하기");
		int [] su = {12, 2, 68, 98, 76, 54, 8, 6, 4};
		int max = su [0];
		int min = su[0];
		
		for (int i = 0; i < su.length; i++) {
			if(su[i] > max) 
				max = su[i];
			if(su[i] < min)
				min = su[i];
		}
		out.print("최대값 : " + max + ", 최소값 : " + min);
	%>
	
	</body>
</html>