package com.mvc.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.board.service.BoardService;
import com.mvc.board.service.BoardServiceImpl;
import com.mvc.board.vo.BoardVO;
import com.mvc.common.controller.Controller;

public class GetBoardListController implements Controller {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//게시판 레코드 검색시 검색할 대상과 단어를 인자값으로 전달
		String search = request.getParameter("search");
		//최초 요청시 null 값 처리
		if(search == null) {
			search = "all";
		}
		
		
		BoardVO vo = new BoardVO();
		vo.setSearch(search);
		vo.setKeyword(request.getParameter("keyword"));
		
		BoardService service = BoardServiceImpl.getInstance();
		List<BoardVO> list = service.boardList(vo);
		
		request.setAttribute("list" , list);
		
		return"/board/getBoardList";
	}

}
