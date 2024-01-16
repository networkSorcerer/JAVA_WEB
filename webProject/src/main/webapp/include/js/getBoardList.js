$(function(){
	$(".getDetail").on("click", function(){
		/*let num = $(this).parent("tr").attr("data-num");*/
		
		let num = $(this).parents("tr").attr("data-num");
		//console.log("num = " + num);
		location.href="/board/detailBoard.do?num" +num;
		/*$("#num").val(num);
		$("#detailForm").attr({
			"method":"post",
			"action":"/board/detailBoard.do"
		});
		$("#detailForm").submit();
	});
	*/
	});
	$("#writeForm").on("click",function(){
		location.href="/board/insertForm.do";
	});
});