package edu.kh.test.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.test.user.model.service.UserService;
import edu.kh.test.user.model.vo.UserDTO;


@WebServlet("/selectUser")
public class SelectUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//입력받은 회원 번호를 가져오기 위한 작업
		UserDTO dto = new UserDTO();
		int userNo =Integer.parseInt(request.getParameter("userNo"));
		dto.setUserNo(userNo);
		//회원번호를 DB에 연결하기 위한 작업
		/*
		 * UserDAO dao = UserDAO.getInstance(); 
		 * UserDTO userDTO = dao.memberSelect(dto);
		 */
		//DB를 통해서 가져온 정보를 출력하기 위한 작업
		
		UserService service = UserService.getInstance();
		UserDTO userDTO = service.memberSelect(dto);
		
		
		String path;
		if(userDTO != null) {
			request.setAttribute("userDTO", userDTO);
			path = "/WEB-INF/views/searchSuccess.jsp";
		}else {
			request.setAttribute("message", "조회 결과가 없습니다");
			path = "/WEB-INF/views/searchFail.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
