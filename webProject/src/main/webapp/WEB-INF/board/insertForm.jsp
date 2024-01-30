<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>게시판 입력화면</title>

    <!-- 부트스트랩 CSS 링크 -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="text-center">
        <h3>게시판 입력화면</h3>
        <form id="f_writeForm">
            <table class="table">
                <tr>
                    <th scope="row">작 성 자</th>
                    <td><input type="text" class="form-control" name="author" id="author" placeholder="작성자 입력"/></td>
                </tr>
                <tr>
                    <th scope="row">글 제 목</th>
                    <td><input type="text" class="form-control" name="title" id="title" placeholder="글제목 입력"/></td>
                </tr>
                <tr>
                    <th scope="row">글 내 용</th>
                    <td><textarea class="form-control" name="content" id="content" placeholder="글내용 입력"></textarea></td>
                </tr>
                <tr>
                    <th scope="row">비 밀 번 호</th>
                    <td><input type="password" class="form-control" name="passwd" id="passwd" placeholder="비밀번호 입력"/></td>
                </tr>
            </table>
        </form>

        <div class="text-end">
            <button type="button" class="btn btn-primary" id="boardInsert">저장</button>
            <button type="button" class="btn btn-primary" id="boardListBtn">목록</button>
        </div>
    </div>
</div>

<!-- 부트스트랩 및 jQuery 등 필요한 스크립트 링크 -->




<script src="/include/js/jquery-3.7.1.min.js"></script>
<script src="/include/js/common.js"></script>
<script src="/include/js/insertForm.js"></script>
<script src="/include/js/detailBoard.js"></script>
</body>
</html>
