package com.book.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookOutputServlet
 */
@WebServlet("/bookOutput")
public class BookOutputServlet extends HttpServlet {
	private static final long serialVersionUID = 8141455246227457480L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		BookVO book = (BookVO)request.getAttribute("book");
		
		out.println("<!DOCTYPE html><html><head><meta charset='UTF-8'/>");
		out.println("<title>책정보 출력</title>");
		out.println("<link rel='icon' href='data :,'>");
		out.println("<style type='text/css'>");
		out.println("table{border-collapse: collapse; width:300px}");
		out.println("caption{font-size:14px;}");
		out.println("td{border:1px solid #000;}");
		out.println("</style>");
		out.println("</head><body>");
		
		out.println("<table><caption>[입력한 책정보]</caption>");
		out.println("<tr><td>책제목</td><td>"+book.getTitle()+"</td></tr>");
		out.println("<tr><td>책저자</td><td>"+book.getAuthor()+"</td></tr>");
		out.println("<tr><td>출판사</td><td>"+book.getPublisher()+"</td></tr>");
		out.println("</table>");
		
		out.println("</body></html>");
		out.close();
	}

}
