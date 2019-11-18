<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "member.model.vo.Member,java.util.*,board.model.vo.Board,board.model.vo.PageData"%>

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
		
		height: 1000px;
		width: 1600px;
		
		
		
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
		border : 1px solid #EAEAEA;
		text-align : center;
	}
	th{
	
		text-align: center;
		background-color : #EAEAEA;
	}
	td{
		height:50px;
		width: 500px;
	}
	
	#updatebtn{
		float: right;
		margin-right: 120px;
	}
	
	</style>
	
	
	<script>
	
	</script>
	
</head>

<body>
	
	
	<div id="container" >
	<div id= "header">
	<div id="header1"><center><h1 id ="title">RED LINE</h1></center></div>
	<div id="header2" >
		<nav class="navbar navbar-expand-sm" id="nav" >
	<div class="navbar navbar-default navbar-right" id="navdiv">
		<ul class="nav navbar-nav navbar-right"  align=right >
			
			<li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id= "navbardrop" data-toggle="dropdown" style="color:black">커뮤니티</a>
			<div class="dropdown-menu">
			<a class="dropdown-item" href="#">A형 게시판</a>
			<a class="dropdown-item" href="#">B형 게시판</a>	
			<a class="dropdown-item" href="#">O형 게시판</a>	
			<a class="dropdown-item" href="#">AB형 게시판</a>		
				</div>
			</li>
			<li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id= "navbardrop" data-toggle="dropdown" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;희귀혈액지식</a>
			<div class="dropdown-menu">
			<a class="dropdown-item" href="#">혈액의 기본지식</a>
			<a class="dropdown-item" href="#">희귀혈액형의 종류</a>	
			<a class="dropdown-item" href="#">헌혈의 오해와 진실</a>	
			<a class="dropdown-item" href="#">혈액관리 시스템</a>		
				</div>
			</li>
			<li><a href="#" class="nav-link" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;헌혈의집찾기</a></li>
			<li><a href="#" class="nav-link" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;헌혈증기증</a></li>
						<li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id= "navbardrop" data-toggle="dropdown" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</a>
			<div class="dropdown-menu">
			<a class="dropdown-item" href="#">회원정보수정</a>
			<a class="dropdown-item" href="#">내가쓴 글보기</a>	
			<a class="dropdown-item" href="#">내가쓴 댓글보기</a>	
					
				</div>
			</li>
		
		</ul>
		
		</div>
		</nav>
		</div>
	<div id="header3">
				<div id= "header3-1"><img src="../../images/login_icon.png" id="loginimg"></div>
		<div id= "header3-2"><span id="logintext">관리자님 환영합니다</span><br>
		
		<center><a href="/logout"><button class="btn">로그아웃</button></a></center>
		
		</div>	
		</div>
	</div>
	<div id="content">
		
		<div id = "content1">
		
		<div id = "content1-1"><center><br><h1>마이페이지</h1></center></div>
		<div id= "content1-2">
			<div id = "content1-2-1">
				
			<a href="/updateReady"><button class="btn" name="mybtn">회원정보수정</button></a>
			</div>
			<div id = "content1-2-2">
				
			<a href="/views/member/Repwd.jsp"><button class="btn" name="mybtn">비밀번호수정</button></a>
			</div>
			<div id = "content1-2-3">
		
			<a href="/myboard"><button class="btn btn-danger" name="mybtn">내가쓴글보기</button></a>
			
			
			</div>
			<div id = "content1-2-4">
			
		<a href="/myComment"><button class="btn" name="mybtn">내가쓴댓글보기</button></a>
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
			<center>
				<table border="1">
				<tr>
					<th></th>
					<th>번호</th>
					<th style = "width:500px">제목</th>
					<th>작성날짜</th>
					<th></th>
					
					
					</tr>
				<c:forEach items="${pageData.commentList }" var="comment" varStatus="i">	
				
				<tr>
					<td style="width:100px"><input type="checkbox"></td>
					<td style="width:100px">${comment.commentNum}</td>
					<td>${comment.boardComment}</td>
					<td style="width:300px">${comment.commentDate}</td>
					<td style="width:150px"><input type="button" value="삭제"></td>
				</tr>	
				</c:forEach>
				
				<tr>
				
				<td colspan=5>${pageData.pageNavi }</td>
				</tr>
				</table>
				
				</center>
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

</body>
</html>