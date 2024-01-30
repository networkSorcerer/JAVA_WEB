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
	
	$("#passwd").bind("keydown", function(event) {
		if(event.keyCode === 13) {
			event.preventDefault();
		}
	});
	$("#passwd").on("keyup", ()=>{
		btnInit();
	});
	$("#passwdCancelBtn").on("click", function(){
		$("#passwd").val("");
		$("#pwdChk").css("visibility", "hidden");
		buttonCheck = "";
	});
	$("#passwdBtn").on("click", function(){
		$.ajax({
			url : "/board/passwdCheck.do",
			type:"post",
			data : $("#f_passwdCheck").serialize(),
			dataType : "text",
			error : function() {
				alert("시스템 오류 입니다 관리자에게 문의 하세요");
			},
			beforeSend: function(){
				if(!chkData("#passwd", "#message", "비밀번호를")) return false;
			},
			success : function(resultData) {
				if(resultData==0){
					$("#message").toggleClass("text-danger");
					$("#message").text("작성시 입력한 비밀번호가 일치하지 않습니다");
					$("#passwd").select();
					
				}else if (resultData==1) {
					$("#message").text("");
					if(buttonCheck=="updateButton"){
						$("#f_data").attr("action", "/board/updateForm.do");
						$("#f_data").submit();
					}else if(buttonCheck=="deleteButton") {
						if(confirm("정말 삭제하시겠습니까?")) {}
						$("#f_data").attr("action","/board/deleteBoard.do");
						$("#f_data").submit();
					}
				}
			}
		})
	})
	//삭제 버튼 클릭시 처리 이벤트
	$("#boardListBtn").on("click",()=>{
		location.href="/board/getBoardList.do";
		
	})
	
})