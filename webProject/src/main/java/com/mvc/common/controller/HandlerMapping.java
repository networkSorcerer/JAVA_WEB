package com.mvc.common.controller;

import java.util.HashMap;
import java.util.Map;

import com.mvc.board.controller.GetBoardListController;
import com.mvc.board.controller.InsertBoardController;
import com.mvc.board.controller.InsertFormController;

public class HandlerMapping {
	private Map<String, Controller> mappings;
	/*
	 * public HandlerMapping() { mappings = new HashMap<String, Controller>();
	 * 
	 * mappings.put("/board/getBoardList.do" , new GetBoardListController()); }
	 * 
	 * public Controller getController(String path) { return mappings.get(path); }
	 */
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		
		mappings.put("/board/getBoardList.do", new GetBoardListController());
		mappings.put("/board/insertForm.do", new InsertFormController());
		mappings.put("/board/insertBoard.do", new InsertBoardController());
		mappings.put("/board/detailBoard.do", new DetailBoardController());
	}
	public Controller getController(String path) {
		return mappings.get(path);
	}
}
