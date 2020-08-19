<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Param Ex Main Page</title>
</head>
<body>
<div>
    <h1>파라미터 예제 메인페이지</h1>
</div>
<!-- 
(1) a태그를 사용해서 GET방식으로 리퀘스트를 전송
    URI에 파라미터를 담아서 서버로 보낸다.
    Response는 JSP페이지
 -->

<div>
    <h3><a href="paramData/usingTag?id=0">관리자 정보 보기</a></h3>
    <h3><a href="paramData/usingTag?id=1">1번 회원 정보보기 </a></h3>
    <h3><a href="paramData/usingTag?email=lee-y002@gmail.com">2번 회원 정보보기 </a></h3>
    <h3><a href="paramData/usingTag?id=3&email=lee-y003@gmail.com">3번 회원 정보보기 </a></h3>
    <h3><a href="paramData/usingTag">에러메시지 출력 </a></h3>
</div>

<!-- 
(2) JavaScript를 사용해서 GET방식으로 리퀘스트를 전송
    URI에 파라미터를 담아서 서버로 보낸다. 
    Response는 JSP페이지
 -->
</body>
</html>