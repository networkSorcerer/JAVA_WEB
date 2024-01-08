<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URL, java.io.InputStreamReader, java.io.IOException" %>
    
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
		String resourcePath = "/message/notice.txt";
		%>
		자원의 실제 경로: <br/>
		<%= application.getRealPath(resourcePath) %><br/>
		--------------------------------------------<br/>
		<%= resourcePath %>의 내용<br>
		--------------------------------------------<br/>
		<%
   			 char[] buff = new char[128];
    		 int len = -1;
    		 URL url = application.getResource(resourcePath);
    		 try (InputStreamReader br = new InputStreamReader(url.openStream(), "UTF-8")) {
        		while ((len = br.read(buff)) != -1) {
             out.print(new String(buff, 0, len).replaceAll("(\\r\\n|\\r|\\n|\\n\\r)", "<br/>"));
        	 }
    		 } catch (IOException ex) {
        		out.println("익셉션 발생 : " + ex.getMessage());
    		 }
		%>
		
	</body>
</html>