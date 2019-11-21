<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style> 
div {
	/* 	border: 1px solid black; */
	box-sizing: border-box;
}

#container {
	
		height: 1300px;
		width: 2400px;
}

#header {
	float: left;
	height: 5%;
	width: 100%;
}

#content {
	float: left;
	height: 90%;
	width: 100%;
}

#footer {
	float: left;
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
	background-color: #fba9a1;
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

input[type=text] {
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	border-bottom-left-radius: 5px;
}
input[type=password] {
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

td {
	height: 50px;
	width: 40px;
}

#table {
	width: 70%;
	height: 50%;
}
</style>
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
			<div id="header3"></div>
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



						<form action="/socialEnroll" method="post" name="enrollFrm">
							<center>
								<table id="table">
									<input type="hidden" value="${kakao.userId }" name = "userId"> 
							<input type="hidden" value="${kakao.userId }" name = "userPw">
							<input type="hidden" value="${kakao.email }" name = "email">
									<tr>
										<td name="td">생년월일 :</td>
										<td><input type="text" name="usernum1" id="usernum1"></td>
									</tr>

									<tr>
										<td name="td">이름 :</td>
										<td><input type="text" name="name" id="name"></td>
									</tr>

									<tr>
										<td name="td">닉네임 :</td>
										<td><input type="text" name="userNickName"
											id="userNickName"> &nbsp; <input type="button"
											value="중복검사" onclick="nickNameDuplicate()"></td>
									</tr>

									<tr>
										<td name="td">주소 :</td>
										<td><input type="text" id="sample6_postcode"
											placeholder="우편번호"> <input type="button"
											onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
											<input type="text" id="sample6_address" placeholder="주소"
											name="addr1"><br> <input type="text"
											id="sample6_detailAddress" placeholder="상세주소" name="addr2">
											<input type="text" id="sample6_extraAddress"
											placeholder="참고항목" name="addr3"></td>
									</tr>


									<tr>
										<td>핸드폰 번호 :</td>
										<td><input type="text" name="phone" id="phone"></td>
									</tr>

									

									<tr>
										<td name="td">혈액형 :</td>
										<td><input type="radio" name="BloodType" value="A"
											checked>A <input type="radio" name="BloodType"
											value="B">B <input type="radio" name="BloodType"
											value="O">O <input type="radio" name="BloodType"
											value="AB">AB</td>
									</tr>
									<tr>
										<td name="td">성별 :</td>
										<td><input type="radio" name="Gender" value="남" checked>남
											<input type="radio" name="Gender" value="여">여</td>
									</tr>

									


									<tr>
										<td></td>
										<td><input type="submit" value="회원가입"
											onclick="return send()" />&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="reset" value="취소"></td>

									</tr>

								</table>
							</center>
							<br>
							
						
						</form>


					</div>
					<div id="content2-2-3"></div>

				</div>
			</div>
		</div>
		<div id="footer">
			<center>
				<br>
				<h6 style="color: darkgray">Copyright KH Corp.All rights
					reserved</h6>
			</center>
		</div>

	</div>




	<form name="checkIdDuplicateFrm" method="post">
		<input type="hidden" name="userId">
	</form>

	<form name="NickNameDuplicateFrm" method="post">
		<input type="hidden" name="userNickName">
	</form>


	<script>
		var flag = false;
		var id = false;
		var pw = false;
		var birth = false;
		var name = false;
		var nickname = false;
		var addr =false;
		var phone = false;
		var email = false;
		
		
	

		

		$("#usernum1").focusout(function() {

			if ($("#usernum1").val() == "") {
				birth = false;
				flag = false;

			} else if (!(/^[0-9]{6}$/.test($("#usernum1").val()))) //비밀번호 검사
			{

				alert("생년월일은 숫자만 6자리 입력해주세요. ex)940228");
				birth = false;
				flag = false;
			} else {
				birth = true;
				flag = true;
			}

		})

		$("#name").focusout(function() {

			if ($("#name").val() == "") {
				name = false;
				flag = false;

			} else if (!(/[가-힣]+$/.test($("#name").val()))) //비밀번호 검사
			{
				alert("이름은 한글(최소1글자)만 가능합니다.");
				flag = false;
				name = false;
			} else {
				name = true;
				flag = true;
			}

		})
		
		$("#sample6_detailAddress").focusout(function() {

			if (!($("sample6_detailAddress").val() == "")) {
				
				addr=true;
				}})

		function nickNameDuplicate() {
			var userNickName = $("#userNickName").val().trim();

			if (!userNickName || userNickName.length < 1) {
				alert("닉네임을 입력해주세요.")
				flag = false;
				nickname = false;
				return;
			}
			
			
			
			$.ajax({
				url : "/nickNameDuplicate",
				type : "POST",
				data : "userNickName=" + $("#userNickName").val().trim(),
				success : function(data) {
					if (data == "true") {
						alert("사용가능한 닉네임 입니다");
						flag = true;
						nickname = true;
					} else {
						
						alert("중복된 닉네임이 있습니다");
						flag = false;
						nickname = false;
					}

				}
			})
		/* 	var url = "/nickNameDuplicate";
			var title = "NickNameDuplicate";
			var status = "left=500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbars=yes";
			var popup = window.open("", title, status);
			NickNameDuplicateFrm.userNickName.value = userNickName;
			NickNameDuplicateFrm.target = title;
			NickNameDuplicateFrm.action = url;
			NickNameDuplicateFrm.method = "post";
			NickNameDuplicateFrm.submit(); */

		}

		$("#phone").focusout(function() {

			if ($("#phone").val() == "") {

				flag = false;
				phone = false;

			} else if (!(/[0-9]+$/.test($("#phone").val()))) //비밀번호 검사
			{
				alert("전화번호는 숫자만 입력해주세요.");
				flag = false;
				phone = false;
			} else {
				flag = true;
				phone = true;
			}

		})

		

	

		function send() {

			if ($("#usernum1").val() == "" || birth == false) {
				alert("생년월일 확인하세요");
				return false;
			}  else if ($("#name").val() == "" || name == false) {
				alert("이름을 확인하세요");
				return false;
			} else if ($("#userNickName").val() == "" || nickname == false) {
				alert("닉네임을 확인하세요");
				return false;
			} else if ($("#sample6_detailAddress").val() == "" || addr2 == false) {
				alert("상세주소를 입력하세요");
				return false;
			} else if ($("#phone").val() == "" || phone == false) {
				alert("전화번호를 확인하세요");
				return false;
			}  else if (flag == false) {
				alert("위 정보들을 확인하세요");
				return false;
				
			} else {
				return true;
			}
		}

		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>




</body>
</html>