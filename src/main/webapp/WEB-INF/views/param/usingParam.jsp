<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Param Ex : usingParam </title>
</head>
<body>
<div>
    <h2>Param Ex</h2>
</div>
<div>
    <c:if test="${member ne null}">
        <ul>
            <li>아아디 : ${member.id }</li>
            <li>이름 : ${member.name }</li>
            <li>이메일 : ${member.email }</li>
        </ul>
    </c:if>
</div>
<div>
<ul>
    <li>
        <div><label><a href="http://localhost:8080/paramData">파라미터예제 메인</a></label></div>
    </li>
</ul>
</div>
</body>
</html>