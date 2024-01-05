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
	 <%
        String[] technologies = {"JSP", "JAVA", "SPRING", "HTML5"};

        // 배열 요소 출력
        for (int i = 0; i < technologies.length; i++) {
    %>
            <%= i %> = <%= technologies[i] %><br>
    <%
        }

        // 문자열 뒤집기
        String reference = "Unicron";
        String reversed = new StringBuilder(reference).reverse().toString();
    %>
    [<%= reference %>] : <%= reversed %>
	<h3>표현식 예제 - 배열원소 출력</h3>
	<%
		String [] str = {"JSP", "JAVA", "SPRING","HTML5"};
	%>
	<table>
		<tr>
			<th>배열의 첨자번호<th>
			<th>배열요소의 값</th>
		</tr>
		<% for (int i=0; i<str.length; i++) { %>
			<tr>
				<td><%=i %></td>
				<td><%=str[i] %></td>
			</tr>
		<%} %>			
	</table>
	
	<h3>표현식 예제 - 레퍼런스 타입 출력!</h3>
	<%
		//레퍼런스타입의 출력
		StringBuffer sf = new StringBuffer("Unicron");
		sf.reverse();
		//out.println("객체의 내용 [Unicron] : " + sf.toString());
	%>
	<label>객체의 내용 [Unicron] : </label>
	<%= sf.toString() %>
	</body>
</html>