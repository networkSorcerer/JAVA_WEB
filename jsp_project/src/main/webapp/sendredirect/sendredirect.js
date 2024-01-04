$(function(){
	$("#word").keyup(function(){
		$("#result").html("");
	});
	
	$("#sendBtn").on("click", ()=>{
		if($("#word").val().replace(/\s/g,"")==""){
			$("#result").html("검색할 단어를 입력해주세요").css("color","#800000");
			$("#word").val();
			$("#word").focus();
			return;
		}else {
			$("#form1").attr({
				"method":"post",
				"action":"sendredirect.jsp"
			});
			$("#form1").submit();
		}
	});
});