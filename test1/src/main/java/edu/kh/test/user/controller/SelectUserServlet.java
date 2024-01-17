package edu.kh.test.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.user.model.dao.UserDAO;
import edu.kh.user.model.vo.UserDTO;




@WebServlet("/selectUser")
public class SelectUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

response.setContentType("text/html;charset=utf-8"); 
PrintWriter out=response.getWriter();
 
//HttpSession session = request.getSession(false); 
//UserDTO dto =(UserDTO)session.getAttribute("search");
UserDTO dto = new UserDTO();
int userNo =Integer.parseInt(request.getParameter("userNo"));
dto.setUserNo(userNo);
//회원번호를 DB에 연결하기 위한 작업
UserDAO dao = UserDAO.getInstance();
UserDTO userDTO = dao.memberSelect(dto);

 out.println("<!DOCTYPE html><html>");
 out.println("<head><meta charset='UTF-8' />");
 out.println("<title>Cookie 예제</title>");
 out.println("<link rel = 'icon' href = 'data:,'></head>");
 out.println("<body>");
 
 if(dto != null ) { 
 out.println("<div><table border='1'>");
 out.println("<tr><th colspan='2'>회원 정보 조회</th></tr>");
 out.println("<tr>"); 
 out.println("<td>회원 번호</td>"); 
 out.println("<td>" + dto.getUserNo() +"</td>"); 
 out.println("</tr>"); 
 out.println("<tr>");
 out.println("<td>회원 아이디<td>"); 
 out.println("<td>" +dto.getUserId()+"</td>");
 out.println("</tr>"); 
 out.println("<tr>");
 out.println("<td>회원 이름<td>"); 
 out.println("<td>" +dto.getUserName()+"</td>");
 out.println("</tr>"); 
 out.println("<tr>");
 out.println("<td>회원 나이<td>"); 
 out.println("<td>" +dto.getUserAge()+"</td>");
 out.println("</tr>"); 
 out.println("</table>"); 
 out.println("</div>");
  out.println("</body></html>"); out.close();
 
 /*}else {
 out.print("<div>회원을 찾지 못했습니다 <br/> 회원 번호를 다시 입력해주세요 </div>"); 
 out.println("<div><a href ='/test1/index.jsp'>처음으로 </a></div>"); }*/


 }}}
	

 
