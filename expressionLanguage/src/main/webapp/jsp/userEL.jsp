<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import = "com.member.User, com.date.Today, com.test.Apple, java.util.ArrayList, java.util.HashMap" %>
<%@ page import = "com.test.LanguageInfoBean, com.grade.StudentGrade,com.book.BookVO" %>
<% --%>
	User member = new User();	
	member.setUname("홍길동");
	member.setUid("goodday");
	member.setUnum(19010001);
	
	com.member.Address add new com.member.Address();
	add.setCity("서울시 강남구 역삼동");
	add.setZipcode("06123");
	
	member.setAdderss(add);
	out.print(member.getUname());
	out.print(member.getAddress().getCity());

%>  
	<script src="../js/html5shiv.js"></scirpt>
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
		<h3>접근자로 데이터출력 (표현식 이용)</h3>
		<%-- <label>uname : </label><%=member.getUname()%></br>
		<label>uid : </label><%out.print(member.gtUid());%><br/> --%>
		<label<unum : < /label><%-member.getUnum()%><br/>
		
		<h3>인스턴스 생성 및 필드값 설정 (액션태그 이용) </h3>
		<jsp:useBean id="user" class="com.member.User" scope="page"/>
		
		<jsp:setProperty name="user" property="uname" value="김늘봄"/>
		<jsp:setProperty name="user" property="uid" value="javauser"/>
		<jsp:setProperty name=:"user" property="unum" value="19050001"/>
		<jsp:useBean id="address" class ="com.member.Address" scope="page"/>
		
		<jsp:setProperty name="address" property="city" value="서울 특별시 강남구 테헤란로 14길 6 남도 빌딩 4 층">
		<jsp:setProperty name="address" property="zipcode" value="04715"/>
		
		<jsp:setProperty name="user" property="address" value="${address}"/>
		
		<h3>액션 태그에서 자바빈즈 getter 호출 </h3>
		
		<label>uname : </laber>
		<jsp:getProperty name = "user" property="uname" /><br/>
		<label>uid : <label>
		<jsp: getProperty name ="user" property="uid"/><br/>
		<label>unum : </label>
		<jsp: getProperty name = "user" property="unum"><br/>
		
		<h3> 표현언어에서 자바빈즈 getter 호출 <h3>
		<label>uname : </label> ${user.uname}<br/>
		<label>uname : </label> ${user.getUname}<br/>
		<label>uid : </label> ${user.uid}<br/>
		<label>unum : </label> ${user.unum}<br/>
		
		<h5>표현언어에서 자바빈즈 getter 호출(has-a 관계출력) </ h5>
		<label> address city : </label> ${user.address.city} <br/>
		<label>address zipcode : </label> ${user.address.zipcode}<br/>
	</body>
</html>