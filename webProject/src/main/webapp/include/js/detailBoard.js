let buttonCheck = "";
$(function(){
	let btnInit = function(){
		$("#message").removeClass("text-danger");
		$("#message").addClass("text-primary");
		$("#message").text("작성시 입력한 비밀번호를 입력해주세요");
		
	}
	
	$("#updateForm").on("click", ()=> {
		$("#f_data").attr({
			"method":"post",
			"action":"/board/updateForm.do"
		});
		$("#f_data").submit();
	});
	
	$("#boardDelete").on("click", ()=> {
		$("#f_data").attr({
			"method":"post",
			"action":"/board/deleteBoard.do"
		});
		$("#f_data").submit();
	});
	
	$("#boardListBtn").on("click",()=>{
		location.href="/board/getBoardList.do";
	})
})