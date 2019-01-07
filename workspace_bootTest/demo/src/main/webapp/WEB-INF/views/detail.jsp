<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail</title>
</head>
<body>

<h2> 게시글 상세 </h2>
 


<div class="container">
    <form action="/insertProc" method="post">
      <div class="form-group">
        <label>제목</label>
        <p>${detail.subject}</p>
      </div>
      <div class="form-group">
        <label>작성자</label>
        <p>${detail.writer}</p>
      </div>
      <div class="form-group">
        <label>작성날짜</label>
        <p>${detail.reg_date}</p>
      </div>
      <div class="form-group">
        <label>내용</label>
        <p>${detail.content}</p>
      </div>
    </form>
</div>
      <button class="btn btn-primary" onclick="location.href='/list'">목록</button>
	<button class="btn btn-primary" onclick="location.href='/update/${detail.bno}'">수정</button>
	<button class="btn btn-danger" onclick="location.href='/delete/${detail.bno}'">삭제</button>

 <%@ include file="bootstrap.jsp" %>
</body>
</html>