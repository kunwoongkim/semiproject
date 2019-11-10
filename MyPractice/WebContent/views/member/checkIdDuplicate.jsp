<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userId = (String) request.getAttribute("userId");
    boolean isUsable = (boolean) request.getAttribute("isUsable");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 검사</title>
<script src="../../js/jquery-2.0.0.js"></script>
</head>
<body>
	<div id="checkId-container">
		<%if(isUsable) {%>
		[<span><%= userId %></span>]는 사용 가능합니다.
		<br><br>
		<button type="button" onclick="self.close()">닫기</button>
		<% }else{ %>
		[<span id="duplicated"><%= userId %></span>]는 이미 사용 중 입니다.
		<br><br>
		<form action="/checkDuplicate" method="post">
		<input type="text" placeholder="아이디를 입력해주세요" name="userId">&nbsp;
		<input type="submit" value="중복검사">
		</form>
		<% } %>
	</div>
	
	<script>
		function fn_checkIdDuplicate(){
			var userId = $("#userId").val().trim();
			
			if (!userId || userId.length < 4) {
				alert("아이디는 4글자이상 가능합니다.");
				return;
			}
			
			checkIdDuplicateFrm.userId.value = userId;
			checkIdDuplicateFrm.submit(); 
			
		}
		
		
		function serUserId(usrId){
			var frm = opener.document.enrollFrm;
			
			frm.user.id.value=userId;
			form.password.focus();
			
			self.close();
		}
		
	</script>


</body>
</html>