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
(1) a태그 / form태그를 사용해서 GET방식으로 리퀘스트를 전송
    URI에 파라미터를 담아서 서버로 보낸다.
    Response는 JSP페이지
 -->

<div><!--  -->
    <h3><a href="http://localhost:8080/paramData/usingParam?id=0">관리자 정보 보기</a></h3>
    <h3><a href="http://localhost:8080/paramData/usingParam?id=1">1번 회원 정보보기 </a></h3>
    <h3><a href="http://localhost:8080/paramData/usingParam?email=lee-y002@gmail.com">2번 회원 정보보기 </a></h3>
    <h3><a href="http://localhost:8080/paramData/usingParam?id=3&email=lee-y003@gmail.com">3번 회원 정보보기 </a></h3>
    <h3><a href="http://localhost:8080/paramData/usingParam">에러메시지 출력 </a></h3>
    <form action="paramData/usingParam" method="get" enctype="application/x-www-form-urlencoded">
        <label>회원  ID 입력</label>
        <input type="text" name=id />
        <input type="submit">
    </form>
</div>



<!-- 
(2) JavaScript를 사용해서 GET방식으로 리퀘스트를 전송
    URI에 파라미터를 담아서 서버로 보낸다. 
    Response는 JSP페이지
 -->
<div>
    <h3>
        <button id="getInfo" onclick="javascript:getInfoUsingId();">멤버 정보 보기(JS)</button>
    </h3>
    <form>
        <label>회원  ID 입력</label>
        <input id="param1" type="text">
    </form>
</div>
</body>

<script>
function getInfoUsingId() {
	id = document.getElementById("param1").value;
	if (id == null || id == "") {
		id = 0;
	}
	location.href="http://localhost:8080/paramData/usingParam?id="+id;
}
</script>
</html>
