<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="js/jquery-3.4.1.min.js"></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
<style>
	body{
		margin-left : 80px;
	
	}
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
		margin-right: 
		
	}
	input[id^=search]{
		margin-top: 20px;
	}
	
	#content1{
		 float: left;
		height: 60%;
		width: 100%;
		
	}
	#content2{
		 float: left;
		height: 40%;
		width: 100%;
		
	}
	#content1-1{
		 float: left;
		height: 100%;
		width: 80%;
	}
	#content1-2{
		 float: left;
		height: 100%;
		width: 20%;
		background-color: #5D5D5D;
		border-top-left-radius:5px;
		border-top-right-radius:5px;
		border-bottom-right-radius:5px;
		border-bottom-left-radius:5px;
	}
	
	#content2-1{
		 float: left;
		height: 100%;
		width: 33.3%;
		background-color: #B5EACC;
	}
	#content2-2{
		 float: left;
		height: 100%;
		width: 33.3%;
		background-color: #FFF2E6;
	}
	#content2-3{
		 float: left;
		height: 100%;
		width: 33.3%;
		background-color: #DDD9CE;
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
	
	img[name=carimg]{
		
	
	
		
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
	
	</style>
</head>

<body>

	
	<div id="container">
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
			<c:if test="${sessionScope.member != null }">
			<li class="nav-item dropdown"><a href="/views/member/myPwd.jsp"  class="nav-link" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</a>
		
					
			</li>
			</c:if> 	
		
		
		</ul>
		
		</div>
		</nav>
		</div>
	<div id="header3">
	
	<c:if test="${sessionScope.member.userId == 'admin'}">
         <div id= "header3-1"><img src="images/login_icon.png" id="loginimg"></div>
      <div id= "header3-2"><span id="logintext">${sessionScope.member.userNickName }님 환영합니다</span><br>
      <a href="/views/member/adminpage.jsp" class="btn" >관리자페이지</a>
      <a href="/logout"><button class="btn">로그아웃</button></a></div>
      
       </c:if>
       
	<c:if test="${sessionScope.member != null }">
			<div id= "header3-1"><img src="images/login_icon.png" id="loginimg"></div>
		<div id= "header3-2"><span id="logintext">${sessionScope.member.userNickName }님 환영합니다</span><br>
		<a href="/views/member/myPwd.jsp"><button class="btn">마이페이지</button></a>
		<a href="/logout"><button class="btn">로그아웃</button></a></div>
		</c:if> 
		
		
		
			
	<c:if test="${sessionScope.member == null }">
		<center><a href="views/member/loginPage.jsp"><button class="btn btn-success" id="searchbtn">로그인</button></a>
		<a href="/views/member/EnrollPage.jsp"><button class="btn btn-success" id="searchbtn">회원가입</button></a></center>
		</c:if> 	
		</div>	
		</div>
	
	<div id="content">
		<div id="content1">
			
			<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/헌혈장려.jpg" name ="carimg" width=1600px; height=480px;>
    </div>
    <div class="carousel-item">
      <img src="images/헌혈증.png" name ="carimg" width=1600px; height=480px;>
    </div>
    <div class="carousel-item">
      <img src="images/혈액.png" name ="carimg" width=1600px; height=480px;>
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
			</div>
		
		
		<div id="content2">
		<div id="content2-1"><img src="img/헌혈증이미지.png" id="img1"></div>
		<div id="content2-2">
		<center>
			<h2>공지사항</h2><hr>
			<table border=1 id="notice">
			<tr>
				<th>번호</th>
				<th>내용</th>
				<th>작성자</th>
				<th>작성일</th>
				</tr>
			<tr>
				<td>1</td>
				<td>REDLINE 스테프를 모집합니다</td>
				<td>관리자</td>
				<td>19.11.05</td>
				</tr>
					<tr>
				<td>1</td>
				<td>REDLINE 스테프를 모집합니다</td>
				<td>관리자</td>
				<td>19.11.05</td>
				</tr>
					<tr>
				<td>1</td>
				<td>REDLINE 스테프를 모집합니다</td>
				<td>관리자</td>
				<td>19.11.05</td>
				</tr>
					<tr>
				<td>1</td>
				<td>REDLINE 스테프를 모집합니다</td>
				<td>관리자</td>
				<td>19.11.05</td>
				</tr>
				
			</table>
		
		</center>
			
			</div>
			<div class="container" id="content2-3">
		
			<h2 style="color: white">혈액형 기본지식</h2><hr>
			<div id ="accordion">
			<div class= "card">
				<div class="card-header">
				<a name="card" class="card-link" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
					<b>혈액의 기본지식</b>
					</a>
				</div>
				
				
			<div id="collapseOne" class="collapse">
				<div class="card-body">
					혈액이 어쩌고  .....
					<button class="btn btn-primary"> 더보기</button>
				</div>
				</div>
			</div>
			<div class= "card">
				<div class="card-header">
				<a name="card" class="card-link" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
					<b>희귀혈액형의 종류</b>
					</a>
				</div>
				
				
			<div id="collapseTwo" class="collapse">
				<div class="card-body">
					A형 b형 .....
					<button class="btn btn-primary"> 더보기</button>
				</div>
				</div>
			</div>
				<div class= "card">
				<div class="card-header">
				<a  name="card" class="card-link" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
					<b>헌혈의 오해와 진실</b>
					</a>
				</div>
				
				
			<div id="collapseThree" class="collapse">
				<div class="card-body">
					헌혈이 나쁜건.....
					<button class="btn btn-primary"> 더보기</button>
				</div>
				</div>
			</div>
				<div class= "card">
				<div class="card-header">
				<a name="card" class="card-link" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
					<b>혈액 관리 시스템</b>
					</a>
				</div>
				
				
			<div id="collapseFour" class="collapse">
				<div class="card-body">
					혈액은 돌고돌아.....
					<button class="btn btn-primary"> 더보기</button>
				</div>
				</div>
			</div>	
			</div>
			
			
			</div>
		</div>
		</div>
	<div id= "footer">
		<br><br><br>
		
		<center><h6 style="color: darkgray">Copyright KH Corp.All rights reserved</h6></center>
		</div>
	
	</div>
	
	
	

	
	
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>