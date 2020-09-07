<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Data Result</title>
</head>
<body>
<div>
    <h2>Form Ex ${title }</h2>
</div>

<div>

<c:if test="${joindMember ne null}">
        <ul>
            <li>아이디 : <c:out value="${joindMember.id }"/></li>
            <li>이름 :  <c:out value="${joindMember.name }"/></li>
            <li>비번 : <c:out value="${joindMember.passwd }"/></li>
            <li>이메일 : <c:out value="${joindMember.email }"/></li>
            <li>생일 : <c:out value="${joindMember.birthday }"/></li>
            <li>성별 : <c:out value="${joindMember.sex }"/></li>
            <c:if test="${joindMember.like ne null}">
                <c:forEach var="like" items="${joindMember.getLikes() }" varStatus="sts">
                <li><p>${sts.count }</p> <c:out value="${like }"/> </li>
                
                </c:forEach>
            </c:if>
        </ul>
</c:if>

</div>
	<div>
		<ul>
			<li>
				<div>
					<label><a href="http://localhost:8080/formData/formDataMain">Form 예제 메인</a></label>
				</div>
			</li>
		</ul>
	</div>
</body>
</html>