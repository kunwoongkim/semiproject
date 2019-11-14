<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="member.model.vo.Member, java.util.ArrayList, member.model.vo.PageData"%>

<%
	PageData pd = (PageData) request.getAttribute("pageData");
	ArrayList<Member> memList = pd.getPageList();
	Member member = (Member) request.getAttribute("member");
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
	width: 700px
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
				<div id="header3-1" style="background-color: #fba9a1"></div>
				<div id="header3-2" style="background-color: #fba9a1">
					<%
						if (member != null) {
					%>
					<div id="header3-1">
						<img src="images/login_icon.png" id="loginimg">
					</div>
					<div id="header3-2">
						<span id="logintext"><%=member.getUserName()%>님 환영합니다</span><br>

						<a href="/logout"><button class="btn">로그아웃</button></a>
					</div>
					<%
						} else {
					%>
					<center>
						<a href="views/member/loginPage.jsp"><button
								class="btn btn-success" id="searchbtn">로그인</button></a> <a
							href="/views/member/EnrollPage.jsp"><button
								class="btn btn-success" id="searchbtn">회원가입</button></a>
					</center>
					<%
						}
					%>



				</div>
			</div>
		</div>
		<div id="content">

			<div id="content1">

				<div id="content1-1">
					<center>
						<br>
						<h1 style="color: dimgrey; font-weight: bold;">관리자 서비스</h1>
					</center>
				</div>
				<div id="content1-2">
					<div id="content1-2-1">

						<a href="#"><button class="btn" name="mybtn"
								style="color: red">회원관리</button></a>
					</div>
					<div id="content1-2-2">
						<a href="#"><button class="btn" name="mybtn">신고관리</button></a>
					</div>
					<div id="content1-2-3">
						<a href="#"><button class="btn" name="mybtn">헌혈증 관리</button></a>
					</div>

				</div>
			</div>
			<div id="content2">
				<div id="content2-1">
					&nbsp; <br>
					<h6 style="color: gray">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
							src="/HtmlProject/WebContent/html/img/214-2142856_team-member-icon-silhouette-of-a-person.png"
							width="30px ">관리자서비스 > 회원관리
					</h6>

					<h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;회원관리</h1>
					<hr>
				</div>

				<div id="content2-2">
					<div id="content2-2-1"></div>
					<div id="content2-2-2">


						<br> <br>





						<center>
							<form action="/memberSearch" method="GET">
								회원 검색 : <input type="text" name="member" id="member" value="검색할 회원의 이름을 입력해주세요."
									style="width: 300px;"> &nbsp;
								<input type="submit" value="검색">
								<hr>

							</form>



							<table border="1">
								<tr>
									<th>아이디</th>
									<th>생년월일</th>
									<th>이름</th>
									<th>닉네임</th>
									<th>주소</th>
									<th>전화번호</th>
									<th>이메일</th>
									<th>혈액형</th>
									<th>성별</th>

								</tr>
								<%
									for (Member memberOne : memList) {
								%>
								<tr>

									<td><%=memberOne.getUserId()%></td>
									<td><%=memberOne.getUsernum1()%></td>
									<td><%=memberOne.getUserName()%></td>
									<td><%=memberOne.getUserNickName()%></td>
									<td><%=memberOne.getAddr()%></td>
									<td><%=memberOne.getPhone()%></td>
									<td><%=memberOne.getEmail()%></td>
									<td><%=memberOne.getBloodType()%></td>
									<td><%=memberOne.getGender()%></td>


								</tr>
								<%
									}
								%>
								<tr>

									<td colspan="9" align=center><%=pd.getPageNavi()%></td>
								</tr>
							</table>
						</center>











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