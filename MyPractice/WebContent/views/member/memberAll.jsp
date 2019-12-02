<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원전체조회 페이지</title>
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
  @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
   
div {
 	/* border: 1px solid black;  */
	box-sizing: border-box;
	font-family: 'Nanum Gothic', sans-serif;
}

#container {
	
	height: 1500px;
      width: 100%;
}


#content {
	height: 80%;
	width: 100%;
}

#footer { /* 모든페이지에 추가  */
   height: 5%;
   width: 100%;
   margin-top: 2000px;
   background: black;
   
}


#title {
	margin-top: 7px;
}


input[id^=search] {
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


#content1-2-2 {
   float: left;
   height: 5%;
   width: 100%;
}

#content1-2-3 {
	   float: left;
   height: 5%;
   width: 100%;
}

#content1-2-4 {
   float: left;
   height: 5%;
   width: 100%;
}

#content2-1 {
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
   font-size: 25px;
   font-weight:bold;
   background:#c81a00;
   color:white;
   
}


table {
	border: 1px solid #EAEAEA;
	text-align : center;
}	

td {
	height: 50px;
	width: 100px
}
th[id=addr]{
width: 500px
}

#title {
   font-size: 60px;
   margin-right: 20px;
   color: #515151;
}



#img_icon1{
  width:30px;
   height:30px;
}

.enrollBtn{

   border: 0px;
   background: #c81a00;
   color:white;
   /*border:1px solid #999999;*/
   border-radius: 3px;
   font-size:17px;
   width:120px;
   height:30px;
   cursor: pointer;
   text-align:center; 
   


}
.enrollBtn:hover{
    box-shadow:-200px 0 0 0 rgba(255,255,255,0.5) inset; 
    }
    
    #btn3{
    background:#c81a00;
    }
    #btn4{
    background:white;
    color:dimgrey;
    }
    
          th {

            text-align: center;
            background-color: #EAEAEA;
        }
        
        #nick{
        width:200px;
        }
    
</style>
</head>
<body>
</head>

<body>


	<div id="container">
		<div id="header">
			<jsp:include page="/views/header/Header2.jsp"></jsp:include>
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

						<a href="/memberAll"><button class="btn" name="mybtn" id="btn3"
								>회원관리</button></a>
					</div>
					<div id="content1-2-2">
						<a href="/singoList"><button class="btn" name="mybtn" id="btn4">신고관리</button></a>
					</div>
			
				</div>
			</div>
			<div id="content2">
				<div id="content2-1">
					&nbsp; <br>
					<h6 style="color: gray">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png"
                     width="30px ">관리자서비스 > 회원관리
					</h6>

					<h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;회원관리</h1>
					<hr>
				</div>

				<div id="content2-2">
					<div id="content2-2-1"></div>
					<div id="content2-2-2">
					
<br>
						<center>
						<br><br><br>
                            <table border="1">
                                <tr>
                                    <td colspan=16 align=center>
							<form action="/memberSearch" method="GET" style="color:#696969">
								회원 검색 : <input type="text" name="search" placeholder="검색할 회원의 이름을 입력해주세요." value="${search }"
									style="width: 300px;"> &nbsp;
								<input type="submit" value="검색" class="enrollBtn">
								

							</form>



							
								<tr>
									<th>아이디</th>
									<th>생년월일</th>
									<th>이름</th>
									<th id="nick">닉네임 </th>
									<th id="addr">주소</th>
									<th>전화번호</th>
									<th>이메일</th>
									<th>혈액형</th>
									<th>성별</th>


										
								</tr>
								<c:forEach items="${pageData.pageList }" var="memberOne">
									<tr>
									
									<td><c:out value="${memberOne.userId}"/></td>
									<td><c:out value="${memberOne.usernum1 }"></c:out></td>
									<td><c:out value="${memberOne.userName }"></c:out></td>
									<td><c:out value="${memberOne.userNickName }"></c:out></td>
									<td><c:out value="${memberOne.addr }"></c:out></td>
									<td><c:out value="${memberOne.phone }"></c:out></td>
									<td><c:out value="${memberOne.email }"></c:out>
									<td><c:out value="${memberOne.bloodType }"></c:out></td>
									<td><c:out value="${memberOne.gender }"></c:out></td>
									</tr>
								</c:forEach>
							 
							 
								<tr>
									<td colspan="9" align=center>${pageData.getPageNavi() }</td>
								</tr>
							</table>
						</center>

					</div>
					
					
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


 <script src="/META-INF/vendor/jquery/jquery.min.js"></script>
  <script src="/META-INF/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
		 <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>