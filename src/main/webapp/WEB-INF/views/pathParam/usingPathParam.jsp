<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PathParam Ex : usingPathParam </title>
</head>
<body>
<div>
    <h2>PathParam Ex</h2>
</div>
<div>
<c:if test="${list ne null}">
<c:forEach var="member" items="${list }" varStatus="sts">
<ul>
    <li><p>${sts.count }</p></li>
    <li>아아디 : <c:out value="${member.id }"/></li>
    <li>이름 : <c:out value="${member.name }"/></li>
    <li>이메일 : <c:out value="${member.email }"/></li>
</ul>
</c:forEach>
</c:if>

</div>
<div>
<ul>
    <li>
        <div><label><a href="http://localhost:8080/pathParamData/">파라미터예제 메인</a></label></div>
    </li>
</ul>
</div>
</body>
</html>