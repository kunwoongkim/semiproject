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
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
div {
   /*     border: 1px solid black;  */
   box-sizing: border-box;
   font-family: 'Nanum Gothic', sans-serif;
}

	
	#container{
		
height: 1500px;
      width: 100%;		
	}
	
#content {
   float: left;
   height: 90%;
   width: 100%;
}
#footer { /* 모든페이지에 추가  */
   height: 5%;
   width: 100%;
   margin-top: 2200px;
   background: black;
   
}
	#title{
		margin-top: 7px;
	}

	input[id^=search]{
		margin-top: 20px;
	}
	
#content1 {
   float: left;
   height: 100%;
   width: 20%;
}
#content2 {
   float: left;
   height: 100%;
   width: 80%;
}

#content1-1 {
   float: left;
   height: 10%;
   width: 100%;
   border-right: 0.1em solid #dddfe3;
   padding:0.1em;
}
#content1-2 {
   float: left;
   height: 100%;
   width: 100%;
   border-right: 0.1em solid #dddfe3;
   padding:0.1em;
}
   
#content1-2-1 {
   float: left;
   height: 5%;
   width: 100%;
}
		#content1-2-2{
	   float: left;
   height: 5%;
   width: 100%;
		
	}
		#content1-2-3{
   float: left;
   height: 5%;
   width: 100%;
		
	}
	#content1-2-4{
   float: left;
   height: 5%;
   width: 100%;
		
	}
	#content2-1{
   float: left;
   width: 100%;
   height: 10%
	}
   #content2-2 {
   float: left;
   width: 100%;
   height: 100%;
}
#content2-2-1 {
   float: left;
   height: 100%;
   width: 15%;
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
	
button[name=mybtn] {
   height: 100%;
   width: 100%;
   font-size: 25px;
   font-weight:bold;
   background:white;
   color:dimgrey;
   
}
	
	button[name=mybtn]:hover{                                   
    box-shadow:200px 0 0 150px rgba(200,26,0,1) inset; 
    }
    
	table{
		border : 1px solid #EAEAEA;
	}

	td{
		height:50px;
		width: 650px;
	}
	#title{
		
		font-size : 60px;
		margin-right : 20px;
		color : #515151;
		
	}
	 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
	
   #img_icon1{
   width:30px;
   height:30px;
}	

	th{
		width: 90px;
		text-align: center;
		background-color : #f3f4f5;
	}
	</style>
	
</head>

<body>
	
	
	<div id="container" >
	<div id= "header">
	<jsp:include page="/views/header/Header2.jsp"></jsp:include>
		</div>
	<div id="content">
		
		<div id = "content1">
		
		<div id = "content1-1">
		<center>
		<br>
		<h1 style="color: dimgrey; font-weight: bold;">마이페이지</h1>
		</center></div>
		<div id= "content1-2">
			<div id = "content1-2-1">
			<a href="/updateReady"><button class="btn" name="mybtn" style="font-size : 25px">회원 정보 수정</button></a>
			</div>
			<div id = "content1-2-2">
				
			<button class="btn" name="mybtn" id="rePwd">비밀번호 변경</button>
			</div>
				<div id = "content1-2-3">
		
		<button class="btn" name="mybtn" id="myboard">내가 쓴 글보기</button>
			
			
			</div>
				<div id = "content1-2-4">
		
			<button class="btn" name="mybtn" id="mycomment">내가 쓴 댓글보기</button>
			
			
			</div>
		
					<div id = "content1-2-4">
		
			<button class="btn" name="mybtn" id = "removebtn">회원탈퇴</button>
			
			
			</div>
			
			
			
			</div>
		</div>
		<div id = "content2">
		<div id = "content2-1"> &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png"
                     width="30px ">마이페이지
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;마이페이지</h1>
               <hr>
			</div>
		<div id ="content2-2">
			<div id="content2-2-1"></div>
			<div id="content2-2-2"><br><br><br>
			<center>
				<table border="1">
				<tr>
					<th><center>이름</center></th>
					<td>&nbsp ${member.userName }</td>
					</tr>
				<tr>
					<th><center>닉네임</center></th>
					<td>&nbsp ${member.userNickName}</td>
					</tr>
				<tr>
					<th><center>생년월일</center></th>
					<td>&nbsp ${member.usernum1} </td>
					</tr>
				<tr>
					<th><center>주소</center></th>
					<td>&nbsp${member.addr}</td>
					</tr>
				<tr>
					<th><center>전화번호</center></th>
					<td>&nbsp${member.phone}</td>
					</tr>
				<tr>
					<th><center>이메일</center></th>
					<td>&nbsp${member.email}</td>
					</tr>
				<tr>
					<th><center>혈액형</center></th>
					<td>&nbsp${member.bloodType }형</td>
					</tr>
				<tr>
					<th><center>성별</center></th>
					<td>&nbsp${member.gender}</td>
					</tr>	
				
				</table>
				
				</center>
			
			</div>
			<div id="content2-2-3"></div>
			
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
			$("#removebtn").click(function(){
			
				if(${sessionScope.member.loginType == "social"}){
					alert("소셜로그인은 지원하지 않는 서비스입니다.");
				}else{
					
					window.location.href="/views/member/remove.jsp";
					
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

	
	
	
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>