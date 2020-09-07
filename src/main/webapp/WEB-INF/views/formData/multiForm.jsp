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
<title>Multi Form Data Result</title>
</head>
<body>
<div>
    <h2>Form Ex ${title }</h2>
</div>

<div>
<h2>4.폼 클래스를 사용(JS)</h2>
<form action="/formData/multiForm" method="POST">
    <div id="objs">


    </div>
    <button type="button" onclick="addInput('objs');">Member Like Add</button> <br>
    
    <label> Submit</label> <input type="submit" value="submit"> <br>

</form>
</div>

</body>

<script type="text/javascript">

$(document).on("click", ".birthday", function(){
	
	$(".birthday").datepicker({ dateFormat: 'yy-mm-dd' });
	
});

cnt=0;
function addInput(target){
  app = document.getElementById(target);
  app.innerHTML += "<div style='border: 1px solid #000;'>" 
   + "<label>" + cnt + "</label><br>"
   + "<label>Member ID       : </label> <input type=\"text\"  name=\"list["+cnt+"].id\"/> <br>"
   + "<label>Member Name     : </label> <input type=\"text\"  name=\"list["+cnt+"].name\"/>   <br>"
   + "<label>Member Password : </label> <input type=\"password\" name=\"list["+cnt+"].passwd\"/> <br>"
   + "<label>Member E-mail   : </label> <input type=\"text\"  name=\"list["+cnt+"].email\"/> <br>"
   + "<label>Member Birth Day: </label> <input type=\"text\" class=\"birthday\" name=\"list["+cnt+"].birthday\"/> <br>"
   + "<label>Member Sex      : </label>  <br>"
   + "<label>Other</label>              <input type=\"radio\" name=\"list["+cnt+"].sex\" value=\"other\"/> <br>"
   + "<label>Man</label>                <input type=\"radio\" name=\"list["+cnt+"].sex\" value=\"man\"/> <br>"
   + "<label>Woman</label>              <input type=\"radio\" name=\"list["+cnt+"].sex\" value=\"woman\"/> <br>"
   + "</div> <br>";
  cnt++;
}

</script>
</html>