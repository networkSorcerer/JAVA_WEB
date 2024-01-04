$(function(){
	$("#sendBtn").on("click", ()=>{
		const pattern =/^\d{1,3}$/;
		if($("#score").val().replace(/\s/g,"")==""){
			alert("점수를 입력해주세요");
			$("#score").val("");
			$("#score").focus();
			return;
		} else if (!pattern.test($("#score").val())){
			alert("점수는 숫자만 입력해 주셔야 합니다");
			$("#score").val("");
			$("#score").focus();
			return;
		} else if($("#score").val() < 0 || $("#score").val() > 100) {
			alert("점수는 0~100사이로 입력해주세요");
			$("#score").val("");
			$("#score").focus();
			return;
		}
		
		$("#scoreForm").attr({
			"method":"post",
			"action":"/jsp_project/score"
		});
		$("#scoreForm").submit();
		
		/*$.ajax({
			url:"/jsp_project/score/score2.jsp",
			type:"post",
			data:$("#scoreForm").serialize(),
			dataType:"text",
			success: function(data) {
				$("#result").val(data);
			},
			//파일 읽기에 실패한 경우 (주소 오타, 웹서버 중지등)
			error : function(xhr, textStatus, errorThrown) {
				alert(textStatus + " (HTTP-" + xhr.status + "/" + errorThrown);
			}
		})*/
	});
});