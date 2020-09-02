<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Path Param Ex Main Page</title>
</head>
<body>
<div>
    <h1>경로 파라미터 예제 메인페이지</h1>
</div>
<!-- 
(1) a태그를 사용해서 GET방식으로 리퀘스트를 전송
    URI에 파라미터를 담아서 서버로 보낸다.
    Response는 JSP페이지
 -->
 
<div>
    <h3><a href="pathParamData/usingPathParamId/0">관리자 정보 보기</a></h3>
    <h3><a href="pathParamData/usingPathParamId/1">1번 회원 정보보기 </a></h3>
    <h3><a href="pathParamData/usingPathParamEmail/lee-y002@gmail.com">2번 회원 정보보기 </a></h3>
    <h3><a href="pathParamData/usingPathParam/3/lee-y003@gmail.com">3번 회원 정보보기 </a></h3>
    <h3><a href="pathParamData/usingPathParam">에러메시지 출력 </a></h3>
</div> 

<!-- 
(2) JavaScript를 사용해서 GET방식으로 리퀘스트를 전송
    URI에 파라미터를 담아서 서버로 보낸다. 
    Response는 JSP페이지
 -->
<div>
    <h3><button id="getInfo" onclick="javascript:getInfoUsingId();">멤버 정보 보기(JS)</button> </h3>
    <form>
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
	
	location.href="http://127.0.0.1:8080/pathParamData/usingPathParamId/"+id;
}

</script>
</html>