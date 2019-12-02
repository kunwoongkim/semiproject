<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.boardA.model.vo.Board"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	<script>
	document.location.href = history.go(-2); 
	document.location.href = history.reload(ture);
	</script>
</body>
</html>