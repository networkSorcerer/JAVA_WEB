$(function(){
	$("#boardUpdate").on("click", function(){
		if(!chkData("#title", "제목을")) return;
		else if(!chkData("#content","작성할 내용을")) return;
		else {
			$("#f_updateForm").attr({
				"method":"post",
				"action":"/board/updateBoard.do"
			});
			$("#f_updateForm").submit();
		}
	});
	
	$("#boardListBtn").on("click", function(){
		location.href="/board/getBoardList.do";
	})
})