<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boot Data Transfer Main Page</title>
</head>
<body>
<div align="center">
    <h1>Boot Data Transfer 예제 모음집</h1>
</div>
<div align="left">
    
    <ul>
    <c:forEach var="ex" items="${exList }">
        
        <li>
            <div><label><a href="${ex.exUri }">${ex.exName }</a></label></div>
            <div>   ${ex.exContent }</div>
        </li>
        
    </c:forEach>
    </ul>

</div>

</body>
</html>