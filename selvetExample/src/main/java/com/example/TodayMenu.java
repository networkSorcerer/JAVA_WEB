package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todayMenu")
public class TodayMenu extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		doPost(request, response);
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		//클라이언트로부터 전송받은 파라미터의 인코딩을 설정
		request.setCharacterEncoding("UTF-8");
		// 서버가 클라이언트 브라우저에 전송할 문서 타입 설정
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		//out.println("태그");
		out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'/>");
		out.println("<title>SELECT & POST</title>");
		out.println("<link rel = 'icon' href = 'data:,'></head>");
		out.println("<body>");
		out.println("<h2 style = 'text-align: center'>오늘의 점심 메뉴 :</h2><ul>");
		
		String [] values = request.getParameterValues("lunch");
		for(int i = 0; i < values.length; i++) {
			out.print(values[i]);
			if(i< values.length-1) out.print(", ");
		}
		
		out.println("</strong></div>");
		out.println("</body></html>");
		
		out.close();
	}

}
