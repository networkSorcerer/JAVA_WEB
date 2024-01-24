$(function(){
	$("#boardInsert").on("click", function(){
		if(!chkData("#author","이름을")) return;
		else if (!chkData("#title", "제목을 ")) return;
		else if (!chkData("#content", "작성할 내용을 ")) return;
		else if (!chkData("#passwd", "비밀번호를")) return;
		else {
			$("#f_writeForm").attr({
				"method":"post",
				"action":"/board/insertBoard.do"
			});
			$("#f_writeForm").submit();
		}
	});
	
	$("#boardListBtn").click(function(){
		location.href="/board/getBoardList.do";
	});
});