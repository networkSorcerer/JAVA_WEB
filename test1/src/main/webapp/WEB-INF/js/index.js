$(function(){
	$("#searchBtn").on("click", () => {
		if (!chkData("#number","회원번호를 ")) return;
		else{
			$("#form").attr({
				"action":"/test1/selectUser",
				"method":"get"
			});
			$("#form").submit();
		}
	})
})