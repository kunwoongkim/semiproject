<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
  
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 확인</title>
</head>
<body>
	아이디 : ${param.userId } <br>
	<a href="/views/member/findPw.jsp"><button>비밀번호 찾기</button></a> 
	<a href="/views/member/loginPage.jsp"><button>로그인</button></a>

</body>
</html>