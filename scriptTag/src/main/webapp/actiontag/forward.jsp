<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
		
		<title>forward.jsp</title>
		
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
	</head>
	<body>
		<% if (request.getParameter("type") == null || request.getParameter("type").equals("user")) { %>
			<jsp:forward page="userPage.jsp">
				<jsp:param name="message" value="Hi! User" />
			</jsp:forward>
		<% } else if (request.getParameter("type").equals("admin")) { %>
			<jsp:forward page="adminPage.jsp">
				<jsp:param name="message" value="Hi! Administrator"/>
			</jsp:forward>
		<% } %>
	</body>
</html>
