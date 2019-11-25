<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "member.model.vo.Member,java.util.*"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
<style>
	div{
		box-sizing: border-box;
	}
	
	#container{
		
		
		height: 1300px;
		width: 2400px;
		
		
	}

	#header{
		height: 7%;
		width: 100%;
		
	}
	
	#content{
		height: 80%;
		width: 100%;
		
	}
	#footer{
		height: 5%;
		width: 100%;
	
		
	}
	#header1{
		 float: left;
		height: 100%;
		width: 25%;
		color: black;
		
	}
	#title{
		margin-top: 7px;
	}
	#header2{
		 float: left;
		height: 100%;
		width: 55%;
	}
	#header3{
		 float: left;
		height: 100%;
		width: 20%;
		
		
	}
	input[id^=search]{
		margin-top: 20px;
	}
	
	#content1{
		 float: left;
		height: 100%;
		width: 25%;
		
	}
	#content2{
		 float: left;
		height: 100%;
		width: 75%;
		
	}
	#content1-1{
		 float: left;
		height: 15%;
		width: 100%;
	}
	#content1-2{
		 float: left;
		height: 85%;
		width: 100%;
	
		
	}
	
		#content1-2-1{
		float: left;
		height: 10%;
		width: 100%;
		
	}
		#content1-2-2{
		float: left;
		height: 10%;
		width: 100%;
		
	}
		#content1-2-3{
		float: left;
		height: 10%;
		width: 100%;
		
	}
	#content1-2-4{
		float: left;
		height: 10%;
		width: 100%;
		
	}
	#content2-1{
		float: left;
		width: 100%;
		height: 15%
	}
	#content2-2{
			float: left;
		width: 100%;
		height: 85%;
		
	}
	#content2-2-1{
		 float: left;
		height:100%;
		width:15%;
	}
	#content2-2-2{
		 float: left;
		height:100%;
		width:70%;
	}
	
	#content2-2-3{
		 float: left;
		height:100%;
		width:15%;
	}
	
	

	#login{
		 float: left;
		height: 40%;
		width: 100%;
	}
	#nav{
		width: 100%;
		height:100%;
		float:right;
		
	}
	

	#login1{
		float :left;
		height: 25%;
		width: 100%;
	}
	#login2{
		float :left;
		height: 50%;
		width: 100%;
	}
	#login3{
		float :left;
		height: 25%;
		width: 100%;
	}
	input[id*=user]{
		
		border-top-left-radius:5px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
		border-bottom-left-radius:5px;
	}
	button[id^=btn]{
		height: 40px;
		width: 80px;
		
	}
	
	.nav-link{
		color: white;
		
	}
	
	
	input[id^=search]{
		border-top-left-radius:5px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
		border-bottom-left-radius:5px;

	}
	
	.card{
		background-color: #EAEAEA;
		
	}
	a[name=card]{
		color : black;
		font-style: italic;
	}
.carousel-inner{
      width: 100%;
      height: 100%;
  }
	

	#searchbtn{
		margin-top: 17px;
		height: 35px;
	}
	.material-icons{
		margin-right: 2px;
		margin-top: 2px
		
	}
	i[name=usericon]{
		width: 1
	}
	
	#notice{
		text-align: center;
	}
	
	
	#img1{
		
		width: 400px;
	
		
		margin-right:120px
	}
	
	#logintext{
		font-size: 20px;
	}
	
	#header3-1{
		 float: left;
		height: 100%;
		width: 20%;
		
	}
	#header3-2{
		 float: left;
		height: 100%;
		width: 80%;
	
	}
	#loginimg{
		 float: left;
		height: 100%;
		width: 100%;
	}
	
	button[name=mybtn]{
		height: 100%;
		width: 100%;
		font-size: 20px;
	}
	
	table{
		
	}
	th[name=th]{
		width: 90px;
		text-align: center;
		background-color : #EAEAEA;
	}
	td{
		height:50px;
		width: 500px;
	}
	
	#updatebtn{
		float: right;
		margin-right: 340px;
	}
	 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 	#title{
		
		font-size : 60px;
		margin-right : 20px;
		color : #515151;
		
	}
	
	</style>
	
	
	<script>
		$(document).ready(function(){
			
			var user_name = $("#user_name");
			var birth = $("#birth");
			var addr = $("#addr");
			var email = $("#email");
			var phone = $("#phone");



			$("input:submit").click(function(){

				
				if(!(/[가-힣]+$/.test(user_name.val()))) //이름 검사
				{
					alert( "이름은 한글(최소1글자)만 가능합니다.");
					return false;
				}else if(!(/^[0-9]+$/.test(birth.val()))){
					alert( "생년월일에 숫자만 입력해주세요 ex) 940228");
					return false;
				}else if(!(/^[0-9]+$/.test(phone.val()))){
					alert( "전화번호에 숫자만 입력해주세요 ex) 01065644999");
					return false;
				}else if (!(/^[a-z0-9]{4,12}@/.test(email.val()))) //이메일 검사
				{
					alert( "이메일을 재확인해주세요");
					return false;
				}
				return true;
			})

	



		})
	</script>
	
</head>

<body>
	
	
	<div id="container" >
	<div id= "header">
	<jsp:include page="/views/header/Header2.jsp"></jsp:include>
	</div>
	<div id="content">
		
		<div id = "content1">
		
		<div id = "content1-1"><center><br><h1>마이페이지</h1></center></div>
		<div id= "content1-2">
			<div id = "content1-2-1">
				
			<a href="/updateReady"><button class="btn btn-danger" name="mybtn">회원정보수정</button></a>
			</div>
			<div id = "content1-2-2">
				
			<button class="btn" name="mybtn" id="rePwd">비밀번호수정</button>
			</div>
					<div id = "content1-2-3">
		
		<button class="btn" name="mybtn" id="myboard">내가쓴글보기</button>
			
			
			</div>
				<div id = "content1-2-4">
		
			<button class="btn" name="mybtn" id="mycomment">내가쓴댓글보기</button>
			
			
			</div>
				<div id = "content1-2-4">
		
			<a href="/views/member/remove.jsp"><button class="btn" name="mybtn" id = "removebtn">회원탈퇴</button></a>
			
			
			</div>
			
			</div>
		</div>
		<div id = "content2">
		<div id = "content2-1">&nbsp;
			<br>
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;회원정보수정</h2>
			<hr>
			</div>
		<div id ="content2-2">
			<div id="content2-2-1"></div>
			<div id="content2-2-2">
			<form action="/update" method="post">
			<center>
				
				<table>
				<tr>
					<th name = "th">이름</th>
					<td><input type="text" class="form-control" name="name" id="user_name" value=${member.userName }></td>
					</tr>
				<tr>
					<th name = "th">닉네임</th>
					<td><input type="text" class="form-control" name="nickname" id="user_nickname" value=${member.userNickName }></td>
					</tr>
				<tr>
					<th name = "th">생년월일</th>
					<td><input type="text" class="form-control" name="birth" id="birth" value=${member.usernum1 }></td>
					</tr>
				<tr>
					<th name = "th">주소</th>
					<td><input type="text" class="form-control" name="addr" id="addr" value=${member.addr }></td>
					</tr>
				<tr>
					<th name = "th">전화번호</th>
					<td><input type="text" class="form-control" name="phone" id="phone" value=${member.phone }></td>
					</tr>
				<tr>
					<th name = "th">이메일</th>
					<td><input type="text" class="form-control" name="email" id="email" value=${member.email }></td>
					</tr>
				<tr>
					
				
				</table>
				
				
				</center>
				<input type="submit" value="수정" id="updatebtn" class="btn btn-danger">
				</form>
			</div>
			<div id="content2-2-3"></div>
			<div></div>
			</div>
		</div>
		</div>
	<div id= "footer">
		<center><h6 style="color: darkgray">Copyright KH Corp.All rights reserved</h6></center>
		</div>
	
	</div>
	
	
<script>
		$("#rePwd").click(function(){
			
				if(${sessionScope.member.loginType == "social"}){
					alert("소셜로그인은 지원하지 않는 서비스입니다.");
				}else{
					
					window.location.href="/views/member/Repwd.jsp";
					
				}		
		
		
		});
		$("#myboard").click(function(){
			
			$.ajax({
				
			url : "/myboardcheck",
			type : "post",
			success : function(data){
				
				
				if(data=="fail"){
					
					alert("작성한 게시판이 없습니다.");
					
				}else{
					
					
					window.location.href="/myboard";
				}
				
			}
			
			
			});
		});
		
			$("#removebtn").click(function(){
				
				if(${sessionScope.member.loginType == "social"}){
					alert("소셜로그인은 지원하지 않는 서비스입니다.");
				}else{
					
					window.location.href="/views/member/remove.jsp";
					
				}		
		
		
		});
	
			$("#mycomment").click(function(){
				
				$.ajax({
					
				url : "/myCommentcheck",
				type : "post",
				success : function(data){
					
					
					if(data=="fail"){
						
						alert("작성한 댓글이 없습니다.");
						
					}else{
						
						
						window.location.href="/myComment";
					}
					
				}
				
				
				});
				
		
		
		});
	</script>
	
	
	
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>