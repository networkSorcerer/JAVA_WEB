$(function(){
	$("input[type='button']").on("click", function(){
		//console.log("확인");
		if($("#name").val().replace(/\s/g,"")=="") {
			alert("이름을 입력해 주세요");
			$("#name").val("");
			$("#name").focus();
			return;
		}
		if($("#address").val().replace(/\s/g,"")=="") {
			alert("주소를 입력해 주세요 ");
			$("#address").val("");
			$("#address").focus();
			return;
		}
		
		$("#dataForm").attr({
			"method":"post",
			"action":"/selvetExample/getData"
		});
		$("#dataForm").submit();
	});
});