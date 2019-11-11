<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="member.model.vo.Member, java.util.*"%>
    
     <% Member member = (Member) session.getAttribute("member");
     
   
      
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<script src="../../js/jquery-2.0.0.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
	
	
	<style>
div {
	/*       border: 1px solid black;*/
	box-sizing: border-box;
}

#container {
	height: 1000px;
	width: 1600px;
}

#header {
	height: 7%;
	width: 100%;
}

#content {
	height: 80%;
	width: 100%;
}

#footer {
	height: 5%;
	width: 100%;
}

#header1 {
	float: left;
	height: 100%;
	width: 25%;
	color: dimgrey;
}

#title {
	margin-top: 7px;
}

#header2 {
	float: left;
	height: 100%;
	width: 55%;
}

#header3 {
	float: left;
	height: 100%;
	width: 20%;
}

input[id^=search] {
	margin-top: 20px;
}

#content1 {
	float: left;
	height: 100%;
	width: 25%;
}

#content2 {
	float: left;
	height: 100%;
	width: 75%;
}

#content1-1 {
	float: left;
	height: 15%;
	width: 100%;
}

#content1-2 {
	float: left;
	height: 85%;
	width: 100%;
}

#content1-2-1 {
	float: left;
	height: 10%;
	width: 100%;
}

#content1-2-2 {
	float: left;
	height: 10%;
	width: 100%;
}

#content1-2-3 {
	float: left;
	height: 10%;
	width: 100%;
}

#content1-2-4 {
	float: left;
	height: 10%;
	width: 100%;
}

#content2-1 {
	float: left;
	width: 100%;
	height: 15%
}

#content2-2 {
	float: left;
	width: 100%;
	height: 85%;
}

#content2-2-1 {
	float: left;
	height: 100%;
	width: 15%;
}

#content2-2-2 {
	float: left;
	height: 100%;
	width: 70%;
}

#content2-2-3 {
	float: left;
	height: 100%;
	width: 15%;
}

#login {
	float: left;
	height: 40%;
	width: 100%;
}

#nav {
	width: 100%;
	height: 100%;
	float: right;
}

#login1 {
	float: left;
	height: 25%;
	width: 100%;
}

#login2 {
	float: left;
	height: 50%;
	width: 100%;
}

#login3 {
	float: left;
	height: 25%;
	width: 100%;
}

input[id*=user] {
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
}

button[id^=btn] {
	height: 40px;
	width: 80px;
}

.nav-link {
	color: white;
}

input[id^=search] {
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
}

.card {
	background-color: #EAEAEA;
}

a[name=card] {
	color: black;
	font-style: italic;
}

.carousel-inner {
	width: 100%;
	height: 100%;
}

#searchbtn {
	margin-top: 17px;
	height: 35px;
}

.material-icons {
	margin-right: 2px;
	margin-top: 2px
}

i[name=usericon] {
	width: 1
}

#notice {
	text-align: center;
}

#img1 {
	width: 400px;
	margin-right: 120px
}

#logintext {
	font-size: 20px;
}

#header3-1 {
	float: left;
	height: 100%;
	width: 20%;
}

#header3-2 {
	float: left;
	height: 100%;
	width: 80%;
}

#loginimg {
	float: left;
	height: 100%;
	width: 100%;
}

button[name=mybtn] {
	height: 100%;
	width: 100%;
	font-size: 20px;
}

table {
	border: 1px solid #EAEAEA;
}

td {
	height: 50px;
	width: 40px
}
</style>
</head>
<body>

</head>

<body>


	<div id="container">
		<div id="header">
			<div id="header1" style="background-color: #fba9a1">
				<center>
					<h1 id="title">RED LINE</h1>
				</center>
			</div>
			<div id="header2">
				<nav class="navbar navbar-expand-sm" id="nav"
					style="background-color: #fba9a1">
					<div class="navbar navbar-default navbar-right" id="navdiv">
						<ul class="nav navbar-nav navbar-right" align=right>

							<li class="nav-item dropdown"><a href="#"
								class="nav-link dropdown-toggle" id="navbardrop"
								data-toggle="dropdown" style="color: dimgrey">커뮤니티</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#" style="color: dimgrey">A형
										게시판</a> <a class="dropdown-item" href="#" style="color: dimgrey">B형
										게시판</a> <a class="dropdown-item" href="#" style="color: dimgrey">O형
										게시판</a> <a class="dropdown-item" href="#" style="color: dimgrey">AB형
										게시판</a>
								</div></li>
							<li class="nav-item dropdown"><a href="#"
								class="nav-link dropdown-toggle" id="navbardrop"
								data-toggle="dropdown" style="color: dimgrey">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;희귀혈액지식</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#" style="color: dimgrey">혈액의
										기본지식</a> <a class="dropdown-item" href="#" style="color: dimgrey">희귀혈액형의
										종류</a> <a class="dropdown-item" href="#" style="color: dimgrey">헌혈의
										오해와 진실</a> <a class="dropdown-item" href="#"
										style="color: dimgrey">혈액관리 시스템</a>
								</div></li>
							<li><a href="#" class="nav-link" style="color: dimgrey">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;헌혈의집찾기</a></li>
							<li><a href="#" class="nav-link" style="color: dimgrey">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;헌혈증기증</a></li>
							<li class="nav-item dropdown"><a href="#"
								class="nav-link dropdown-toggle" id="navbardrop"
								data-toggle="dropdown" style="color: dimgrey">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#" style="color: dimgrey">회원정보수정</a>
									<a class="dropdown-item" href="#" style="color: dimgrey">내가쓴
										글보기</a> <a class="dropdown-item" href="#" style="color: dimgrey">내가쓴
										댓글보기</a>

								</div></li>

						</ul>

					</div>
				</nav>
			</div>
			<div id="header3">
				<div id="header3-1" style="background-color: #fba9a1">
					<img src="../../images/login_icon.png" id="loginimg">
				</div>
				<div id="header3-2" style="background-color: #fba9a1">
					<% if(member != null){ %>
			<div id= "header3-1"><img src="images/login_icon.png" id="loginimg"></div>
		<div id= "header3-2"><span id="logintext"><%=member.getUserName() %>님 환영합니다</span><br>
		<a href="/views/member/myPwd.jsp"><button class="btn">마이페이지</button></a>
		<a href="/logout"><button class="btn">로그아웃</button></a></div>
		<% }else{ %>
		<center><a href="views/member/loginPage.jsp"><button class="btn btn-success" id="searchbtn">로그인</button></a>
		<a href="/views/member/EnrollPage.jsp"><button class="btn btn-success" id="searchbtn">회원가입</button></a></center>
		<%} %>	

		

				</div>
			</div>
		</div>
		<div id="content">

			<div id="content1">

				<div id="content1-1">
					<center>
						<br>
						<h1 style="color: dimgrey; font-weight: bold;">회원 서비스</h1>
					</center>
				</div>
				<div id="content1-2">
					<div id="content1-2-1">

						<a href="#"><button class="btn" name="mybtn">로그인</button></a>
					</div>
					<div id="content1-2-2">
						<a href="#"><button class="btn" name="mybtn"
								style="color: red">회원가입</button></a>
					</div>

				</div>
			</div>
			<div id="content2">
				<div id="content2-1">
					&nbsp; <br>
					<h6 style="color: gray">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="/HtmlProject/WebContent/html/img/214-2142856_team-member-icon-silhouette-of-a-person.png"
							width="30px ">회원서비스 > 회원가입
					</h6>

					<h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;회원가입</h1>
					<hr>
				</div>

				<div id="content2-2">
					<div id="content2-2-1"></div>
					<div id="content2-2-2">


						<br> <br>

						<form action="/enroll" method="post">
							<table style="width: 800px">
								<tr>
									<td name="td">아이디 :</td>
									<td><input type="text" name="userId" id="userId">
										&nbsp; <input type="button" value="중복검사"
										onclick="fn_checkIdDuplicate()"></td>
								</tr>

								<tr>
									<td name="td">비밀번호 :</td>
									<td><input type="password" name="userPw" id="userPw"></td>
								</tr>

								<tr>
									<td name="td">비밀번호 확인 :</td>
									<td><input type="password" name="userPwdre" id="userPwdre">
										<input type="button" value="비밀번호확인"
										id="passwordbtn">
									
									</td>
								</tr>

								<tr>
									<td name="td">생년월일 :</td>
									<td><input type="text" name="usernum1" id="usernum1"></td>
								</tr>

								<tr>
									<td name="td">이름 :</td>
									<td><input type="text" name="userName" id="name"></td>
								</tr>

								<tr>
									<td name="td">닉네임 :</td>
									<td><input type="text" name="userNickName" id="userNickName">
									&nbsp; <input type="button" value="중복검사"
										onclick="nickNameDuplicate()"></td>
								</tr>

								<tr>
									<td name="td">주소 :</td>
									<td><input type="text" name="addr" id="addr"></td>
								</tr>


								<tr>
									<td>핸드폰 번호 :</td>
									<td><input type="text" name="phone" id="phone"></td>
								</tr>

								<tr>
									<td>이메일 :</td>
									<td><input type="text" name="email" id="email"></td>
								</tr>

								<tr>
									<td name="td">혈액형 :</td>
									<td><input type="radio" name="BloodType" value="A" checked>A
										<input type="radio" name="BloodType" value="B">B
										<input type="radio" name="BloodType" value="O">O
										<input type="radio" name="BloodType" value="AB">AB</td>
								</tr>

								<tr>
									<td name="td">성별 :</td>
									<td><input type="radio" name="Gender" value="남" checked>남
										<input type="radio" name="Gender" value="여">여</td>
								</tr>


								<tr>
									<td name="td">비밀번호 힌트 :</td>
									<td><select name="question" id="question">
											<option name="q_elementry" id="q_elementry">당신의 초등학교
												이름은?</option>
											<option name="q_precious" id="q_precious">당신의 보물 1호는
												?</option>
											<option name="q_love" id="q_love">당신의 첫사랑 이름은 ?</option>
											<option name="q_nickname" id="q_nickname">유년시절 별명은?</option>
											<option name="q_date" id="q_date">가장 기억이 남는 날짜는?</option>
									</select></td>
								</tr>

								<tr>
									<td name="td">비밀번호 힌트 답안 :</td>
									<td><input type="text" name="answer" id="answer"></td>
								</tr>



							</table>
							<br>
							<center>
								<input type="submit" value="회원가입" onclick="return send()" />&nbsp;&nbsp;&nbsp;&nbsp;<input
									type="reset" value="취소">

							</center>
						</form>


					</div>
					<div id="content2-2-3"></div>
					<div></div>
				</div>
			</div>
		</div>
		<div id="footer">
			<center>
				<h6 style="color: darkgray">Copyright KH Corp.All rights
					reserved</h6>
			</center>
		</div>

	</div>




	<form name="checkIdDuplicateFrm" method="post">
		<input type="hidden" name="userId">
	</form>
	</div>
	
	<script>
	var flag = false;
	
	
	 function fn_checkIdDuplicate(){
		var userId = $("#userId").val().trim();
		
		if(!userId || userId.length < 4){
			alert("아이디는 4글자 이상 가능합니다.");
			return;
		}
		var url = "/checkDuplicate";
		var title = "checkIdDuplicate";
		var status = "left=500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbars=yes";
		var popup = window.open("", title, status);
		checkIdDuplicateFrm.userId.value = userId;
		checkIdDuplicateFrm.target = title;
		checkIdDuplicateFrm.action = url;
		checkIdDuplicateFrm.method = "post";
		checkIdDuplicateFrm.submit();
	}
	 
	
	 
		
			
			
		
			$("#passwordbtn").click(function(){
				
				
				if($("#userPw").val() == ""){
					
					alert( "비밀번호를 입력해주세요");
					flag=false;
					
				}else if (!(/[a-zA-Z0-9]{8,10}$/.test($("#userPw").val()))) 
				{
				
					alert( "비밀번호는 소문자,대문자,숫자 중 8~12글자로 입력 바랍니다.");
					flag = false;
				}else if($("#userPwdre").val() == ""){
					
					alert( "비밀번호확인을 입력해주세요");
					flag=false;
					
				}else if (!($("#userPw").val() == $("#userPwdre").val())) 
				{
				
					alert( "비밀번호가 일치 하지않습니다");
					flag = false;
				
				}else{
									 
					alert( "비밀번호가 일치합니다");
					flag = true;		 
									 
			}
				
				
				
			})
				

				$("#usernum1").focusout(function(){

						
				if($("#usernum1").val() == ""){
					
					flag=false;
					
				}else if (!(/^[0-9]{6}$/.test($("#usernum1").val()))) //비밀번호 검사
				{
				
					alert( "생년월일은 숫자만 6자리 입력해주세요. ex)940228");
					flag = false;
				}else{
					flag = true;
				}
				
				
				
			})
		
				$("#name").focusout(function(){

						
				if($("#name").val() == ""){
					
					flag=false;
					
				}else if (!(/[가-힣]+$/.test($("#name").val()))) //비밀번호 검사
				{
					alert( "이름은 한글(최소1글자)만 가능합니다.");
					return false;
				}else{
					flag = true;
				}
				
				
				
			})
			
		
	 
		function nickNameDuplicate(){
			var userNickName = $("#userNickName").val().trim();

			if (!userNickName || userNickName.length < 1) {
				alert("닉네임을 입력해주세요.");
				return;
			}
			var url = "/nickNameDuplicate";
			var title = "NickNameDuplicate";
			var status = "left=500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbars=yes";
			var popup = window.open("", title, status);
			NickNameDuplicateFrm.userNickName.value = userNickName;
			NickNameDuplicateFrm.target = title;
			NickNameDuplicateFrm.action = url;
			NickNameDuplicateFrm.method = "post";
			NickNameDuplicateFrm.submit();
			
			
			
		}
		
		
				$("#addr").focusout(function(){

						
				if($("#addr").val() == ""){
					
					flag=false;
					
				}else if (!(/[가-힣]+$/.test($("#addr").val()))) //비밀번호 검사
				{
					alert( "주소는 한글(최소1글자)만 가능합니다.");
					flag = false;
				}else{
					flag = true;
				}
				
				
				
			})
		
			
				$("#phone").focusout(function(){

						
				if($("#phone").val() == ""){
					
					flag=false;
					
				}else if (!(/[0-9]+$/.test($("#phone").val()))) //비밀번호 검사
				{
					alert( "전화번호는 숫자만 입력해주세요.");
					flag = false;
				}else{
					flag = true;
				}
				
				
				
			})
		
			$("#email").focusout(function(){
				if($("#email").val() == ""){
					flag=false;
				}else if (!(/^[a-z0-9]{4,12}@/.test($("#email").val()))) //이메일 검사
				{
					alert( "이메일을 재확인해주세요");
					return false;
				}else{
					flag = true;
				}
			})
		
		
				$("#answer").focusout(function(){
				if($("#answer").val() == ""){
					alert( "비밀번호 힌트 답안을 작성해주세요.");
					flag=false;
				}else{
					flag = true;
				}
			})
		
		
			function send(){
				
				if($("#userId").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#usernum1").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#userPw").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#name").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#userNickName").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#addr").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#phone").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#email").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}else if($("#answer").val() == ""){
					alert("위 정보들을 확인하세요");
					return false;
				}
				else if(flag==true)
					{
						return true;
					}else{
						alert("위 정보들을 확인하세요");
						return false;
					}
			}
	


</script>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>