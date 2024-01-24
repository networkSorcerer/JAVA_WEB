<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/common/common.jsp" %>

	<body>
	
		<div class="container">
			<div class = "text-center" >
			게시판 입력화면
			<form id="f_writeForm">
				<div class="mb-3 row">
    				<label for="author" class="col-sm-2 col-form-label">작 성 자</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control"  name="author" id="author" placeholder="작성자 입력" />
   				</div>
   				<div class="mb-3 row">
    				<label for="title" class="col-sm-2 col-form-label">글 제 목</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control"  name="title" id="title" placeholder="글제목 입력" />
   				</div>
  				</div>
  				<div class="mb-3 row">
    				<label for="content" class="col-sm-2 col-form-label">글 내 용</label>
    			<div class="col-sm-10">
      				<textarea  class="form-control"  name="content" id="content" placeholder="글내용 입력"></textarea>
   				</div>
  				</div>
  				<div class="mb-3 row">
    				<label for="passwd" class="col-sm-2 col-form-label">비 밀 번 호</label>
    			<div class="col-sm-10">
      				<input type="password" class="form-control"  name="passwd" id="passwd" placeholder="비밀번호 입력" />
   				</div>
  				</div>
  				</div>
			</form>
			<div class="text-end">
				<button type="button" class="btn btn-primary" id="boardInsert">저장</button>
				<button type="button" class = "btn btn -primary" id="boardListBtn">목록</button>
			</div>
			</div>
		</div>
		<script src="/include/js/insertForm.js"></script>
		<script src="/include/js/common.js"></script>
	</body>
</html>