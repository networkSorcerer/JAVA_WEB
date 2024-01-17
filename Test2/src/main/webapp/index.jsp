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
		<link rel="shortcut icon" href="/Test2/image/icon.png" />
		<link rel="apple-touch-icon" href="/Test2/image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/common.js"></script>
		<script>
			$(function(){
				$("#searchBtn").on("click", ()=> {
					if(!chkData("#userNo", "회원번호를")) return;
					else {
						$("#form").attr({
							"method":"get",
							"action":"/Test2/selectUser"
						});
						$("#form").submit();
					}
				})
			});
		</script>
	</head>
	<body>
		<h1>회원 정보 조회(회원 번호 검색)</h1>
		<hr/>
		<form id="form">
			<input type="text" name ="userNo" id="userNo" placeholder="회원 번호 입력"/>
			<button type="button" id="searchBtn">조회</button>
 		</form>
	</body>
</html>