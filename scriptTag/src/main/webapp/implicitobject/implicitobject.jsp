<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date, java.text.SimpleDateFormat, java.util.Set" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		
		<title>내장 객체들 - implicitobject.jsp</title>
		
		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
	</head>
	<body>
		<h2>JSP의 내장 객체들 점검</h2>
		<div>
			<strong>[ request ]</strong><br/>
			getMethod() : <%= request.getMethod() %><br/>
			getRequestURI() : <%= request.getRequestURI() %><br/>
			getHeader("user-agent") : <%= request.getHeader("user-agent") %><br/><br/>
		</div>
		<div>
			<strong>[ response ]</strong><br/>
			getStatus() : <%= response.getStatus() %><br/>
			getBufferSize() : <%= response.getBufferSize() %><br/>
			getContentType() : <%= response.getContentType() %><br/><br/>
		</div>
		<div>
			<strong>[ application ]</strong><br/>
			getContextPath() : <%= application.getContextPath() %><br/>
			getServletContextName() : <%= application.getServletContextName() %><br/>
			getServerInfo() : <%= application.getServerInfo() %><br/>
			Servlet Version : <%= application.getMajorVersion()%>.<%= application.getMinorVersion() %> %>
		</div>
		<div>
		<strong>[ session ]</strong><br/>
			getId() : <%= session.getId() %><br />
			getCreationTime() : <%= new SimpleDateFormat("yyyy.mm.dd hh:MM:ss").format(new Date(session.getCreationTime())) %><br/><br/>
		</div>
		
		<h4>Web Application(/implicitObject)디렉토리의 파일 리스트</h4>
		<%
			Set<String> set = application.getResourcePaths("/");
		if(set != null) {
			Object obj[] = set.toArray();
			for(int i=0; i< obj.length; i++) {
				out.print(obj[i] + "<br/>");
			}
		}
		%>
	</body>
</html>