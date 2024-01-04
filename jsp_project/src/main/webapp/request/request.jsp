<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String scholarship = request.getParameter("scholarship");
	String major = request.getParameter("major");
	String [] platforms = request.getParameterValues("platform");
	String [] languages = request.getParameterValues("language");
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
		<script tpye="text/javascript">
			$(function(){
				//get 방식 데이터 전송
				<%-- $("#btnInfo").on("click",function(){
					location.href="request1.jsp?name=<%=name%>&birth=<%=birth%>";
				}); --%>
				$("#btnInfo").on("click", function(){
					$("#dataForm").attr({
						"method":"post",
						"action":"request1.jsp"
					});
					$("#dataForm").submit();
				})
			});
		</script>
	
	</head>
	<body>
		<form id="dataForm">
			<input type="hidden" name= "name" value="<%=name %>"/>
			<input type ="hidden" name = "birth" value="<%=birth %>"/>
		</form>
		
		<fieldset>
			<legend>
				<strong>기술정보 이력서</strong>
				<input type="button" id="btnInfo" value="개인정보"/>
			</legend>
			<table>
				<%-- <tr>
					<td class="t1">이름</td>
					<td class="t2">&nbsp;<%=name %></td>
				</tr>
				<tr>
					<td class="t1">생년월일</td>
					<td class="t2">&nbsp;<%=birth %></td>
				</tr>  --%>
				<tr>
					<td class="t1">학력</td>
					<td class="t2">&nbsp;<%=scholarship %></td>
				</tr>
				<tr>
					<td class="t1">학과(전공)</td>
					<td class="t2">&nbsp;<%=major %></td>
				</tr>
				<tr>
					<td class="t1">사용가능 플랫폼</td>
					<td class="t2">&nbsp;
					<%
						int i = 0;
						for(String forms : platforms) {
							out.println(forms);
							if(i++ < platforms.length-1) out.println(",");
						}
					%>
					</td>
				</tr>
				<tr>
					<td class="t1">사용가능 언어</td>
					<td class="t2">&nbsp;<%=Arrays.toString(languages) %></td>
				</tr>
			</table>
		</fieldset>
		<br/>
		
		<fieldset>
			<legend><strong>요청 정보</strong></legend>
			<table>
				<tr>
					<td class="t1">요청 방식</td>
					<td class="t2">&nbsp;<%=request.getMethod() %></td>
				</tr>
				<tr>
					<td class="t1">요청 URL</td>
					<td class="t2">&nbsp;<%=request.getRequestURL() %></td>
				</tr>
				<tr>
					<td class="t1">요청 URI</td>
					<td class="t2">&nbsp;<%=request.getRequestURI() %></td>
				</tr>
				<tr>
					<td class="t1">클라이언트 주소</td>
					<td class="t2">&nbsp;<%=request.getRemoteAddr() %></td>
				</tr>
				<tr>
					<td class="t1">프로토콜 방식</td>
					<td class="t2">&nbsp;<%=request.getProtocol() %></td>
				</tr>
				<tr>
					<td class="t1">서버 이름</td>
					<td class="t2">&nbsp;<%=request.getServerName() %></td>
				</tr>
				<tr>
					<td class="t1">서버 포트 번호</td>
					<td class="t2">&nbsp;<%=request.getServerPort() %></td>
				</tr>
			</table>
		</fieldset>
	</body>
</html>