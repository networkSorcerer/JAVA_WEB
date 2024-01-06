<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%!
    int sum(int start, int end) {
        int result = 0;
        for (int i = start; i <= end; i++) {
            result += i;
        }
        return result;
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
		
		<title>Insert title here</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		<script src = "../js/jquery-3.7.1.min.js"></script>
	</head>
	<body>
		<%! double radius = 4.8; %>
		<%!
			//원의 면적을 구하는 메서드
			public double getArea(double r) {
				return r*r*3.14;
			}
		%>
		<%-- 위의 태그는 선언문으로 메서드의 선언이나 멤버변수를 정의하고자 할때 사용  --%>
		반지름이 <%= radius %>인
		원의 면적은 <%= getArea(radius) %>이다
		
		<%! 
			char getKorDay() {
				char result=' ';
				int day = Calendar.getInstance().get(Calendar.DAY_OF_WEEK);
				switch(day) {
				case 1  : result = '일' ; break;
				case 2  : result = '월' ; break;
				case 3  : result = '화' ; break;
				case 4  : result = '수' ; break;
				case 5  : result = '목' ; break;
				case 6  : result = '금' ; break;
				case 7  : result = '토' ; 
				}
				return result;
		}
		%>
		<p>오늘은 <%= getKorDay() %>요일입니다</p>
		<p>
			<% int i = 0; %>
			<label>[지역변수] i = <%= ++i %></label>
		</p>
		<p>
			<label>[전역번수 /필드] memi = <%= ++ memi %></label>
			<%! int memi = 0; %>
		</p>
		<!-- 1부터 10까지의 합 구하기 (sum 메서드 선언) -->
		<p>
			<%= "1부터 10까지 합은" + sum(1, 10) + "입니다" %>
		</p>
	</body>
</html>