<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <%
    String userNickName = (String) request.getAttribute("userNickName");
    boolean NickUsable = (boolean) request.getAttribute("NickUsable");
    %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>닉네임 중복 검사</title>
<script src="../../js/jquery-2.0.0.js"></script>
</head>
<body>
<div id="checkNick-container">
      <%if(NickUsable) {%>
      [<span><%= userNickName %></span>]는 사용 가능합니다.
      <br><br>
      <button type="button" onclick="self.close()">닫기</button>
      <% }else{ %>
      [<span id="duplicated"><%= userNickName %></span>]는 이미 사용 중 입니다.
      <br><br>
      <form action="/nickNameDuplicate" method="post" name="NickNameDuplicateFrm">
      <input type="text" placeholder="닉네임을 입력해주세요" name="userNickName" id="userNickName">&nbsp;
      <input type="submit" value="중복검사">
      </form>
      <% } %>
   </div>
   <script>
   
   
 function nickNameDuplicate(){
      var userNickName = $("#userNickName").val().trim();

      if (!userNickName || userNickName < 1) {
         alert("닉네임을 입력해주세요.")
         return;
      }
      
      NickNameDuplicateFrm.userNickName.value = userNickName;
      NickNameDuplicateFrm.submit(); 
      
   }
   
   function serUserNickName(usrNickName){
      var frm = opener.document.enrollFrm;
      
      frm.user.id.value=userNickName;
      form.password.focus();
      
      self.close();
   }
  
      
   </script>
   

</body>
</html>