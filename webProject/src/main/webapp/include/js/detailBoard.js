let buttonCheck = "";
$(function(){
	let btnInit = function(){
		$("#message").removeClass("text-danger");
		$("#message").addClass("text-primary");
		$("#message").text("작성시 입력한 비밀번호를 입력해주세요");
		
	}
	//수정 버튼 클릭 시 처리 이벤트
	$("#updateForm").on("click", ()=> {
		/*$("#f_data").attr({
			"method":"post",
			"action":"/board/updateForm.do"
		});
		$("#f_data").submit();*/
		$("#pwdChk").css("visibility","visible");
		btnInit();
		buttonCheck = "updateButton";
	});
	//삭제 버튼 클릭 시 처리 이벤트
	$("#boardDelete").on("click", ()=> {
		/*$("#f_data").attr({
			"method":"post",
			"action":"/board/deleteBoard.do"
		});
		$("#f_data").submit();*/
		$("#pwdChk").css("visibility", "visible");
		btnInit();
		buttonCheck = "deleteButton";
	});
	//삭제 버튼 클릭시 처리 이벤트
	$("#boardListBtn").on("click",()=>{
		location.href="/board/getBoardList.do";
	})
})