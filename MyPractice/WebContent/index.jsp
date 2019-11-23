<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
	<title>메인페이지</title>
	<script src="../../js/jquery-2.0.0.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	 <meta name = "google-signin-client_id" content = "181826323862-29136l7je3lvb232vlm92q7a785hsq5n.apps.googleusercontent.com">

<style>
	body{
		/* margin-left : 300px; */
	
	}
	div{
		/* border : 1px solid black; */
		box-sizing: border-box;
	}
	#container{
		
		height: 1900px;
		width: 2400px;
		
		
		
	}

	#header{
		height: 5%;
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
		
		font-size : 60px;
		margin-right : 20px;
		color : #515151;
		
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
		margin-top: 25px;
		width : 50px;
	}
	
	#content1{
		 float: left;
		height: 70%;
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
	
	
	#searchbtn{
		margin-top: 25px;
		height: 40px;
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
	 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
	
	</style>
	
	
		<script>
	
		function clearAllCookies(domain, path) {
			  var doc = document,
			      domain = domain || doc.domain,
			      path = path || '/',
			      cookies = doc.cookie.split(';'),
			      now = +(new Date);
			  for (var i = cookies.length - 1; i >= 0; i--) {
			    doc.cookie = cookies[i].split('=')[0] + '=; expires=' + now + '; domain=' + domain + '; path=' + path;
			  }
			}
	
	
	</script>
	
</head>

<body>

	
	<div id="container">
	<div id= "header">
	<jsp:include page="/views/header/Header.jsp"></jsp:include>
	
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
   
		
       <img src="images/3.jpg" name ="carimg" width=2400px; height=1065px;>
    </div>
   
     <div class="carousel-item">
      <img src="images/4.jpg" name ="carimg" width=2400px; height=1065px;>
    </div>
      <div class="carousel-item">
      <img src="images/1.jpg" name ="carimg" width=2400px; height=1065px;>
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
		
			
			</div>
			<div class="container" id="content2-3">
		
			
			</div>	
			</div>
			
			
			</div>
		
	<div id= "footer">
		<br><br><br>
		
		<center><h6 style="color: darkgray">Copyright KH Corp.All rights reserved</h6></center>
		</div>
	
	</div>

	
	
		 <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body></html>