<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>
    
  <% Member member = (Member) session.getAttribute("member"); 
  	 Member memberNo = (Member) request.getAttribute("member");	
  %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="../../js/jquery-2.0.0.js"></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
body{
		margin-left : 100px;
	
	}
	div{
	
		box-sizing: border-box;
	}
	#container{
		
		height: 1000px;
		width: 1600px;
		
		
		
	}
	#header{
		height: 30%;
		width: 100%;
		
	}
	
	#header1{
		float: left;
		height: 100%;
		width: 20%;
	}
	
	#header2{
		float: left;
		height: 100%;
		width: 60%;
		
	}
	#header3{
		float: left;
		height: 100%;
		width: 20%;
	}
	
	#title{
		
		font-size: 80px;
		
	}
	
	#content{
			float: left;
		width: 100%;
		height: 70%;
	}
	#content1{
			float: left;
		width: 20%;
		height: 100%;
	}
	#content2{
			float: left;
		width: 60%;
		height: 100%;
	}
	#content3{
		width: 20%;
		height: 100%;
	}
	#usr{
		width: 300px;
		height: 30px;
	}
	#pwd{
		width: 300px;
		height: 30px;
	}
	#loginbtn{
		width: 300px;
		height: 40px;
	}
	
	</style>

</head>

<body>
	<div id = "container">
	<div id = "header">
		<div id = "header1"></div>
		<div id = "header2"><center><br><br><br><br><br><br><br><br><span id="title">REDLINE</span></center></div>
		<div id = "header3"></div>
		</div>
	<div id = "content">
		<div id = "content1"></div>
		
		<div id = "content2">
			<form action="/login" method="post">
			<div class="form-group">
 
				<br><center>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" class="form-control" id="usr" name="userId"></center>
				</div>
				<div class="form-group">
  <center>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  		<input type="password" class="form-control" id="pwd" name="userPwd"></center>
  
</div>
			<center><input type="submit" class="btn btn-danger" value="로그인" id = "loginbtn"></center>
				</form><br>
				<center><input type="submit" class="btn btn-danger" value="회원가입" id = "loginbtn"></center>
				<center><button class="btn">아이디 찾기</button><button class="btn">비밀번호 찾기</button></center>
				</div>
				
				
		<div id = "content3"></div>
		
		</div>
	<div id = "footer">
		
		</div>
	
	
			</div>
		
		
	
		
	
	

	

	
	
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>