package com.example;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/firstRedirect")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
//	public FirstServlet() {
//		System.out.println("FirstServlet 객체 생성");
//	}
//	/**
//	 * @see Servlet#init(ServletConfig)
//	 */
//	public void init(ServletConfig config) throws ServletException {
//		// TODO Auto-generated method stub
//		System.out.println("init() 메서드 호출");
//	}
//
//	/**
//	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		System.out.println("service(ServletRequest, ServletResponse) 메서드 호출");
//	}
	
	//protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html; charset=utf-8");
		//단순 이동은 인자값으로 서블릿명 또는 jsp파일명 명시
		//response.sendRedirect("secondRedirect");
		
		//같은 context명을 사용하기에 생략 가능
		//서블릿 명 또는 jsp파일명 다음에 ? 이후 즉 query string 이라고 하며
		//서블릿에 전달할 값을 명시
		//그때 name=value로 여러개이면 name=value&name1-value1로작성
		//response.sendRedirect("/selvetExample/secondRedirect?name=Younghee");
		//response.sendRedirect("secondRedirect?name=Yonghee");
	//}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setAttribute("address", "서울특별시 영등포구 의사당대로 1");
		response.sendRedirect("secondRedirect");
	}	

}
