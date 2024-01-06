$(function(){
	$("#btnCalc").click(function(){
		const numberPattern = /^\d+$/g;//정규표현식 명시
		if($("#num1").val().replace(/\s/g,"")=="") {
			alert("숫자를 입력해 주세요");
			$("#num1").val("");
			$("#num1").focus();
		}else {
			if($("#num1").val().search(numberPattern)<0) {
				alert("문자를 입력할수 없습니다");
				$("#num1").val("");
				$("#num1").focus();
				return;
			}
		}
		
		if($("#num2").val().replace(/\s/g,"")==""){
			alert("숫자를 입력해 주세요");
			$("#num2").val("");
			$("#num2").focus();
			return;
		}else{
			if($("#num2").val().search(numberPattern)<0) {
				alert("문자를 입력할수 없습니다");
				$("#num2").val("");
				$("#num2").focus();
				return;
			}
		}
		
		//$("#frm").attr({
			//"method":"post",
			//"action":"/selvetExample/calc"//이게 연결하는데 중요한 부분인듯 action
		//});

		//$("#frm").submit();
		$.ajax({
		url : "/selvetExample/calcServlet2",
		type : "post",
		data : $("#frm").serialize(),
		dataType : "text",
		success : function(data) {
			$("#result").val(data);
		},
		error : function(xhr, textStatus, errorThrown) {
			alert(textStatus + "(HTTP -" + xhr.status + " / " +errorThrown);
		}
	});
	

});	
	
	
});