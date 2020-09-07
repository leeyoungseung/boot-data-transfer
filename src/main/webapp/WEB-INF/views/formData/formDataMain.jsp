<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<title>Form Data Ex Main Page</title>
</head>
<body>
<div>
    <h1>폼 데이터 예제 메인페이지</h1>
</div>

<div style='border: 1px solid #F0F;'>
<h2>1.파라미터 전송</h2>
<form action="formData/insertMember1" method="POST">
    <label>Member ID       : </label> <input type="text" id="id" name="id"/> <br>
    <label>Member Name     : </label> <input type="text" id="name" name="name"/>   <br>
    <label>Member Password : </label> <input type="password" id="passwd" name="passwd"/> <br>
    <label>Member E-mail   : </label> <input type="text" id="email" name="email"/> <br>
    <label>Member Birth Day: </label> <input type="text" class="birthday" id="birthday" name="birthday"/> <br>
    <label>Member Sex      : </label>  <br>
        <label>Other</label>              <input type="radio" id="other" name="sex" value="other"/> <br>
        <label>Man</label>                <input type="radio" id="man" name="sex" value="man"/> <br>
        <label>Woman</label>              <input type="radio" id="woman" name="sex" value="woman"/> <br>
    
    <label> Submit</label> <input type="submit" value="submit"> <br>
</form>

</div>

<div style='border: 1px solid #F0F;'>
<h2>2.폼 클래스를 사용</h2>
<form action="formData/insertMember2" method="POST">
    <label>Member ID       : </label> <input type="text" id="id" name="id"/> <br>
    <label>Member Name     : </label> <input type="text" id="name" name="name"/>   <br>
    <label>Member Password : </label> <input type="password" id="passwd" name="passwd"/> <br>
    <label>Member E-mail   : </label> <input type="text" id="email" name="email"/> <br>
    <label>Member Birth Day: </label> <input type="text" class="birthday" id="birthday" name="birthday"/> <br>
    <label>Member Sex      : </label>  <br>
        <label>Other</label>              <input type="radio" id="other" name="sex" value="other"/> <br>
        <label>Man</label>                <input type="radio" id="man" name="sex" value="man"/> <br>
        <label>Woman</label>              <input type="radio" id="woman" name="sex" value="woman"/> <br>
    
    <div id="likes">
        
    </div> <br>
    <button type="button" onclick="addInput('likes');">Member Like Add</button> <br>
    
    <label> Submit</label> <input type="submit" value="submit"> <br>
</form>

</div>


<div style='border: 1px solid #F0F;'>
<h2>3.파라미터 전송(JS)</h2>
<form action="formData/insertMember1" id="insertForm3" method="POST">
    <label>Member ID       : </label> <input type="text" id="id" name="id"/> <br>
    <label>Member Name     : </label> <input type="text" id="name" name="name"/>   <br>
    <label>Member Password : </label> <input type="password" id="passwd" name="passwd"/> <br>
    <label>Member E-mail   : </label> <input type="text" id="email" name="email"/> <br>
    <label>Member Birth Day: </label> <input type="text" class="birthday" id="birthday" name="birthday"/> <br>
    <label>Member Sex      : </label>  <br>
        <label>Other</label>              <input type="radio" id="other" name="sex" value="other"/> <br>
        <label>Man</label>                <input type="radio" id="man" name="sex" value="man"/> <br>
        <label>Woman</label>              <input type="radio" id="woman" name="sex" value="woman"/> <br>
    
    <label> Submit</label> <input type="button" value="submit" onclick="sendForm(this.form);"> <br>

</form>
</div>

<div style='border: 1px solid #F0F;'>
<h2>4.폼 클래스를 사용(JS)</h2>
<form action="formData/insertMember2" id="insertForm3" method="POST">
    <label>Member ID       : </label> <input type="text" id="id" name="id"/> <br>
    <label>Member Name     : </label> <input type="text" id="name" name="name"/>   <br>
    <label>Member Password : </label> <input type="password" id="passwd" name="passwd"/> <br>
    <label>Member E-mail   : </label> <input type="text" id="email" name="email"/> <br>
    <label>Member Birth Day: </label> <input type="text" class="birthday" id="birthday" name="birthday"/> <br>
    <label>Member Sex      : </label>  <br>
        <label>Other</label>              <input type="radio" id="other" name="sex" value="other"/> <br>
        <label>Man</label>                <input type="radio" id="man" name="sex" value="man"/> <br>
        <label>Woman</label>              <input type="radio" id="woman" name="sex" value="woman"/> <br>
    
    <div id="likes_2">
        
    </div> <br>
    <button type="button" onclick="addInput('likes_2');">Member Like Add</button> <br>
    
    <label> Submit</label> <input type="button" value="submit" onclick="sendForm(this.form);"> <br>

</form>
</div>

<div>
<form action="formData/multiForm" method="GET">
    <label> 멀티 폼 데이터 전송하기 예제 </label> <input type="submit" value="move"> <br>

</form>
</div>

</body>
<script type="text/javascript">
$(function(){
    $(".birthday").datepicker({ dateFormat: 'yy-mm-dd' });
});

cnt=0;
function addInput(target){
  cnt++;
  app = document.getElementById(target);
  //app.innerHTML += cnt + " : <input type=\"text\" name=\"like["+cnt+"]\"><br>";
  app.innerHTML += cnt + " : <input type=\"text\" name=\"like\"><br>";
}

function sendForm(form) {
	var id = form.id.value;
	var name = form.name.value;
	var passwd = form.passwd.value;
	var email = form.email.value;
	var birthday = form.birthday.value;
	var sex = '';
	
	for (var i = 0; i < form.sex.length; i++) {
		if (form.sex[i].checked) {
			sex = form.sex[i].value;
			break;
		}
	}
	
	form.submit();
	
}

</script>
</html>