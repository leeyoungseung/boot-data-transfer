<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Form List Result</title>
</head>
<body>
	<div>
		<c:if test="${list ne null}">
			<c:forEach var="member" items="${list }" varStatus="sts">
				<ul>
					<li><p>${sts.count }</p></li>
					<li>아이디 : <c:out value="${member.id }" /></li>
					<li>이름 : <c:out value="${member.name }" /></li>
					<li>비번 : <c:out value="${member.passwd }" /></li>
					<li>이메일 : <c:out value="${member.email }" /></li>
					<li>생일 : <c:out value="${member.birthday }" /></li>
					<li>성별 : <c:out value="${member.sex }" /></li>
				</ul>
			</c:forEach>
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