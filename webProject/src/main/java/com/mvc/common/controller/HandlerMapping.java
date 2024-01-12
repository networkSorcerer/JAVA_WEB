package com.mvc.common.controller;

import java.util.HashMap;
import java.util.Map;

import com.mvc.board.controller.GetBoardListController;

public class HandlerMapping {
	private Map<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		
		mappings.put("/board/getBoardList.do" , new GetBoardListController());
	}
	
	public Controller getController(String path) {
		return mappings.get(path);
	}
}
