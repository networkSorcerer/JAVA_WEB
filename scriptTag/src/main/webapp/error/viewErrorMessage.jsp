<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
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
    <style type="text/css">
        #wrapper{width: 650px}
        #imgView {float: left; display: inline; margin-right:15px;}
        #imgView img {width: 210px; height: 209px;}
        #msgView {float: left;}
    </style>
</head>
<body>
    <div id="wrapper">
        <p>요청 처리 과정에서 예외가 발생하였습니다<br/>
        빠른 시간내에 문제를 해결하도록 하겠습니다</p>
        <div id="imgView">
            <img src="../image/error.jpg"/>
        </div>
        <div id="msgView">
            <label>에러타입 :</label>
            <%= exception.getClass().getName() %><br/>
            <label>에러 메시지:</label>
            <strong><%= exception.getMessage() %></strong>
        </div>
    </div>        
</body>
</html>