package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calc")
public class CalcServlet extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response )throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 입력값 가져오기
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        String op = request.getParameter("operator");

        // 연산 수행
        int result = calc(num1, num2, op);

        // 결과 출력
        out.println("<!DOCTYPE html><html>");
        out.println("<head><meta charset='UTF-8'/><title>간단한 연산 결과</title>");
        out.println("<link rel='icon' href='data:,'></head>");
        out.println("<body>");
        out.println("<h2>계산 결과</h2>");
        out.println("<hr style = 'width:28%; margin-left:0px' / >");
        out.println(num1 + " " + op+ " " + num2+ "=" +result);
        out.println("</body></html>");
        
        out.close();
    }


    // 계산 메서드
    public int calc(int num1, int num2, String op) {
       int result = 0;
       if(op.equals("+")) {
    	   result = num1 + num2;
       }else if(op.equals("-")) {
    	   result = num1 - num2;
       }else if(op.equals("*")) {
    	   result = num1 * num2;
       }else if(op.equals("/")) {
    	   if(num2!=0)
    		   result = num1 / num2;
    	   else
    		   result = 0;
       } 	
    	return result;
    }
}