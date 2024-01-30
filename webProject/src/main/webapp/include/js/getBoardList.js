$(function(){
    $(".getDetail").on("click", function(){
        let num = $(this).parents("tr").attr("data-num");
        location.href = "/board/detailBoard.do?num=" + num;
    });

    $("#writeForm").on("click",function(){
        location.href = "/board/insertForm.do";
    });

    // 입력 양식 enter 제거 또는 검색 기능 부여
    $("#keyword").bind("keydown", function(event){
        if(event.keyCode == 13) {
            event.preventDefault();
        } 
    });

    $("#searchData").on("click", ()=> {
        if($("#search").val() != "all") {
            if(!chkData("#keyword", "검색어를 ")) return;
        } else if($("#search").val() == "all"){
            $("#keyword").val("");
        }
        $("#f_search").attr({
            "method": "post",
            "action": "/board/getBoardList.do"
        });
        $("#f_search").submit();
    });

    $(".goDetail").on("click", function(){
        
        let num = $(this).parents("tr").attr("data-num");
        location.href = "/board/goDetail.do?num=" + num;
    });
});
