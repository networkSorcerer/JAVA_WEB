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
		<h2> pageContext 예제 </h2>
		<%! 
		public void work(String param, PageContext page) {
			try {
				JspWriter out = page.getOut();
				
				if(param==null) {
					out.print("다음과 같은 형식으로 URL을 요청해야 정상처리됩니다</br>");
					out.print("http://localhost:8080/scriptTag/implicitobject/pagecontext.jsp?param=include or forward");
					return;
				}
				if(param.equals("include")) {
					out.print("--include 전 -- <br/><hr/>");
					page.include("page.jsp");
					out.print("--include 후 -- <br/><hr/>");
				} else if (param.equals("forward")) {
					out.print("--include 전 -- <br/><hr/>");
					page.forward("page.jsp");
				}
			}catch (Exception e) {
				System.out.println("오류 발생 !!");
			}
		}
		
		%>
		<%
			String param = request.getParameter("param");
			this.work(param, pageContext);
		%>
	</body>
</html>