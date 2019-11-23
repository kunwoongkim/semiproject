<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "member.model.vo.Member,java.util.*"%>

 
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	div{
		
		box-sizing: border-box;
	}
	
	#container{
		
		
		height: 1300px;
		width: 2000px;
		
		
		
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
	}
	th{
		width: 90px;
		text-align: center;
		background-color : #EAEAEA;
	}
	td{
		height:50px;
		width: 500px;
	}
	#pwd{
	
		width:400px;	
	}
	#emaildiv{
	
		width:400px;	
	}
	#emailanswerdiv{
	
		width:400px;	
	}
		 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
	
	</style>
	
</head>

<body>
	
	
	<div id="container" >
	<div id= "header">
	<div id="header1"><center><a href="/index.jsp"><h1 id ="title">RED LINE</h1></a></center></div>
	<div id="header2" >
	<nav class="navbar navbar-expand-sm" id="nav" >
	<div class="navbar navbar-default navbar-right" id="navdiv">
		<ul class="nav navbar-nav navbar-right"  style="width : 1200px ">
			
			<li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id= "navbardrop" data-toggle="dropdown" style="color:#515151; width:220px; font-size : 19px">커뮤니티</a>
			<div class="dropdown-menu">
			<a class="dropdown-item" href="#">A형 게시판</a>
			<a class="dropdown-item" href="#">B형 게시판</a>	
			<a class="dropdown-item" href="#">O형 게시판</a>	
			<a class="dropdown-item" href="#">AB형 게시판</a>		
				</div>
			</li>
			<li ><a href="/views/blood_info/blood_info.jsp" class="nav-link" id= "navbardrop" style="color:#515151; width:220px;font-size : 19px">희귀혈액지식</a>
			</li>
			<li><a href="/bloodHouse" class="nav-link" style="color:#515151; width:220px;font-size : 19px">헌혈의집찾기</a></li>
			<li><a href="#" class="nav-link" style="color:#515151; width:220px;font-size : 19px">헌혈증기증</a></li>
			<c:if test="${sessionScope.member != null }">
			<li class="nav-item dropdown"><a href="/myPage"  class="nav-link" style="color:#515151; width:220px;font-size : 19px">마이페이지</a>
		
					
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
      <a href="/memberAll" class="btn" >관리자페이지</a>
    <a href="/logout" onclick="signOut();" class="btn">로그아웃</a>	</div>
      
       </c:if>
       
	<c:if test="${sessionScope.member != null }">
			<div id= "header3-1"><img src="images/login_icon.png" id="loginimg"></div>
		<div id= "header3-2"><span id="logintext">${sessionScope.member.userNickName }님 환영합니다</span><br>
		<a href="/myPage"><button class="btn">마이페이지</button></a>
		<a href="/logout" onclick="clearAllCookies(domain, path)" class="btn">로그아웃</a>	</div>
		</c:if> 
		
		
			
	<c:if test="${sessionScope.member == null }">
		<center><a href="/views/member/loginPage.jsp"><button class="btn btn-light" id="searchbtn" style="width:100px; color:#515151"><b>LOGIN</b></button></a>
		<a href="/views/member/EnrollPage.jsp"><button class="btn btn-light" id="searchbtn" style="width:100px; color:#515151"><b>JOIN</b></button></a></center>
		</c:if> 	
		</div>	
		</div>
	<div id="content">
		
		<div id = "content1">
		
		<div id = "content1-1"><center><br><h1>비밀번호찾기</h1></center></div>
		<div id= "content1-2">
		
			</div>
		</div>
		<div id = "content2">
		<div id = "content2-1">
			
			</div>
		<div id ="content2-2">
			<div id="content2-2-1"></div>
			<div id="content2-2-2">
			<center>
			<br><br><br><br><br><br>
			
			아이디 입력:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
			<div class="input-group mb-3" id="pwd">
    <input type="password" class="form-control" placeholder="아이디를 입력해주세요" id="userId" >
    <div class="input-group-append" >
     <input type="button" value="인증번호받기" id="emailbtn">
    </div>
  </div> 	
  </center>
  
  	<center>
  
    
			<div class="input-group mb-3" id="emailanswerdiv">
    <input type="hidden" class="form-control" placeholder="인증번호입력" id="emailanswer" >
    <div class="input-group-append" >
      <input type="hidden" value="확인" id="pwbtn">
    </div>
  </div> 	
 </center>
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
	
<script type="text/javascript">

	var key = "";
	
 $("#emailbtn").click(function(){
	 
	 var userId = $("#userId").val().trim();
	
	 
	 $.ajax({
			url : "/findPw",
			type : "POST",
			data : {userId : userId},
			success : function(data) {
				if (data == "false") {
					alert("아이디와 이메일을 확인하세요");
				} else {
					
					alert("이메일이 전송되었습니다.");
					$("#emailanswer").attr("type","text");
					$("#pwbtn").attr("type","button");
					key = data;
				}

			}, fail : function(){
				alert("아이디와 이메일을 확인하세요");
			}
	 
 
 })
 });
 
 $("#pwbtn").click(function(){
	 
	 if($("#emailanswer").val()== key){
		 
		 window.location.href="/views/member/updatePwd.jsp?userId="+$("#userId").val();
	 }else{
		 
		 alert("인증번호를 확인해주세요.");
	 }
	 
 });
 
 
</script>
	
	
	
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>