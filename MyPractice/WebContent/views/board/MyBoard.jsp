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
	#title{
		
		font-size : 60px;
		margin-right : 20px;
		color : #515151;
		
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
	
	 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
	
	</style>
	
	
	<script>
	
	</script>
	
</head>

<body>
	
	
	<div id="container" >
	<div id= "header">
	<div id="header1"><center><a href="/index.jsp" id ="title">RED LINE</a></center></div>
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
		
		<div id = "content1-1"><center><br><h1>마이페이지</h1></center></div>
		<div id= "content1-2">
		<div id = "content1-2-1">
				
			<a href="/updateReady"><button class="btn" name="mybtn">회원정보수정</button></a>
			</div>
			<div id = "content1-2-2">
				
			<button class="btn" name="mybtn" id="rePwd">비밀번호수정</button>
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
			<h2>&nbsp;&nbsp;&nbsp;&nbsp;내가쓴글보기</h2>
			<hr>
			</div>
		<div id ="content2-2">
			<div id="content2-2-1"></div>
			<div id="content2-2-2">
			<center>
				<table border="1">
				<tr>
					
					<th>번호</th>
					<th style = "width:500px">제목</th>
					<th>작성날짜</th>
					<th>삭제</th>
					
					
					</tr>
				<c:forEach items="${pageData.pageList }" var="board" varStatus="i">	
				
				<tr>
					
					<td style="width:100px">${board.boardNumber}</td>
					<td>${board.title}</td>
					<td style="width:300px">${board.makeDate}</td>
					<td style="width:150px"><a href="/deleteMyBoard?boardNo=${board.boardNumber }"><input type="button" value="삭제" onclick="return deletebtn()"/></a></td>
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
<script>

	function deletebtn(){
		
		var result=window.confirm("게시물을 삭제하시겠습니까??"); //확인
		 
		   if(result){
			   
			   return true;
		   }else{
			   return false;
		   }
		
		
	}

</script>


<script>
		$("#rePwd").click(function(){
			
				if(${sessionScope.member.loginType == "social"}){
					alert("소셜로그인은 지원하지 않는 서비스입니다.");
				}else{
					
					window.location.href="/views/member/Repwd.jsp";
					
				}		
		
		
		})
		
		
	
	
	</script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>