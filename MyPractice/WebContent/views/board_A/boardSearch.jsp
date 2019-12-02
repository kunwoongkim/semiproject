<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="icon/fontawesome/css/all.css" rel="stylesheet">
<link rel="stylesheet" type="text/css">   

<style>
  @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
   
div {
    /*  border: 1px solid black;   */
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

#title1 {
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
#img_icon1{
   width:30px;
   height:30px;
}


/* ################################################### */

th {
	text-align: center;
}

td {
	text-align: center;
}

#table {
	border-collapse: collapse;
	text-align: left;
}

#table>tbody>tr>td {
	line-height: 1.7;
}

table.table-hover1 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #FF5A5A;
	border-bottom: 3px solid #FF2424;
	text-align : center;
}

table.table-hover1 th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #CCCCCC;
	background: #f3f6f7;
}

table.table-hover1 td {
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #CCCCCC;
}

.table-hover1 tbody tr:hover td, .table-hover1 tbody tr:hover th {
	background-color: #FFEAEA;
}

div#search {
	padding: 10px;
	margin-top : -10px;
	position: relative;
}

div.text-right {
	
}

td#title1 {
	text-align: left;
}

.pagination {
	display: inline-block;
	text-align: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	border: 1px solid #ddd;
}

.pagination a.active {
	background-color: #FF6C6C;
	color: white;
	border: #FF6C6C;
}

.pagination
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#FFEAEA
;


}
.pagination a:first-child {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
}

.pagination a:last-child {
	border-top-right-radius: 5px;
	border-top-right-radius: 5px;
}

.center {
	text-align: center;
}

html, body {
	height: 100%;
	overflow: scroll;
}

#all {
	height: 100%;
}

#modeDate {
	color: #CC3D3D;
}

#search_type>li {
	font-size: 12px;
}
#searchType{
	margin-left : 10px;
	margin-top : 22px;
	height : 35px;
}

#writebutton1,#writebutton2{
	margin-right : 20px;
}

.pagination a.hidden{
	display : none;
	
}

button[name=mybtn]:hover{                                   
    box-shadow:200px 0 0 150px rgba(200,26,0,1) inset; 
    }
</style>

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
                  <h1 style="color: dimgrey; font-weight: bold;">커뮤니티</h1>
               </center>
            </div>
             <div id="content1-2">
               <div id="content1-2-1">

                  <a href="/boardA?boardType=A"><button class="btn" name="mybtn" id="btnA">Rh- A형 게시판</button></a>
               </div>
               <div id="content1-2-2">
                  <a href="/boardA?boardType=B"><button class="btn" name="mybtn" id="btnB">Rh- B형 게시판</button></a>
               </div>
               <div id="content1-2-3">

                  <a href="/boardA?boardType=AB"><button class="btn" name="mybtn" id="btnAB">Rh- AB형 게시판</button></a>
               </div>
               <div id="content1-2-4">
                  <a href="/boardA?boardType=O"><button class="btn" name="mybtn" id="btnO">Rh- O형 게시판</button></a>
               </div>
         
            </div>
         </div>
         <div id="content2">
            <div id="content2-1">
               &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png"
                     width="30px ">커뮤니티 > 게시판
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;RH- ${boardType }형 게시판</h1>
               <hr>
            </div>


            <div id="content2-2">
             

		<table class="table table-hover1" id="table">
			<thead>
				<tr>
					<th style="width: 5%">번호</th>
					<th style="width: 40%">제목</th>
					<th style="width: 20%">작성자</th>
					<th style="width: 20%">작성일시 <a data-toggle="tooltip"
						data-placement="right" title="게시글 수정시 수정일시가 붉은색으로 표시됩니다."><i
							class="fas fa-question-circle"></i></a></th>
					<th style="width: 15%">조회수</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${pageList}" var="board">
					<tr>
						<td style="width: 5%">${board.dNum}</td>
						<td style="width: 40%" id=title1><a
							href="boardASelect?boardNumber=${board.boardNumber}"> <span
								style="color: black"> ${board.title }</span>
						</a></td>
						<td style="width: 20%">${board.userNickName}</td>

						<td style="width: 20%"><jsp:useBean id="today" class="java.util.Date"></jsp:useBean>
							<c:if test="${board.modDate == null}">
								<fmt:parseNumber value="${today.time / (1000 * 60 * 60 * 24)}"
									var="nowDays" integerOnly="true"></fmt:parseNumber>
								<fmt:parseNumber
									value="${board.makeDate.time / (1000 * 60 * 60 * 24)}"
									var="regDays" integerOnly="true"></fmt:parseNumber>
								<c:set value="${nowDays - regDays }" var="dayDiff"></c:set>
								<c:choose>
									<c:when test="${dayDiff == 0 }">
										<fmt:formatDate value="${board.makeDate }" pattern="HH:mm"></fmt:formatDate>
									</c:when>
									<c:otherwise>
										<fmt:formatDate value="${board.makeDate }"
											pattern="yyyy.MM.dd"></fmt:formatDate>
									</c:otherwise>
								</c:choose>
							</c:if> <c:if test="${board.modDate != null }">
								<div id=modeDate>
									<fmt:parseNumber value="${today.time / (1000 * 60 * 60 * 24)}"
										var="nowDays" integerOnly="true"></fmt:parseNumber>
									<fmt:parseNumber
										value="${board.modDate.time / (1000 * 60 * 60 * 24)}"
										var="regDays" integerOnly="true"></fmt:parseNumber>
									<c:set value="${nowDays - regDays }" var="dayDiff"></c:set>
									<c:choose>
										<c:when test="${dayDiff == 0 }">
											<fmt:formatDate value="${board.modDate }" pattern="HH:mm"></fmt:formatDate>
										</c:when>
										<c:otherwise>
											<fmt:formatDate value="${board.modDate }"
												pattern="yyyy.MM.dd"></fmt:formatDate>
										</c:otherwise>
									</c:choose>
								</div>
							</c:if></td>

						<td style="width: 15%">${board.clickCount}</td>




					</tr>

				</c:forEach>

			</tbody>
		</table>


		<br>
		<div>


			<c:if test="${sessionScope.member != null }">
				<a id = "writebutton1" style ="color : white;"href="/views/board_A/boardWrite.jsp"
					class="btn btn-danger pull-right" role="button">글쓰기</a>
			</c:if>

			<c:if test="${sessionScope.member == null }">
				<a id = "writebutton1" style ="color : white;" href="/views/board_A/writeLogin.jsp"
					class="btn btn-danger pull-right" role="button">글쓰기</a>
			</c:if>


			<form name ="search" action="/boardSearch?boardType=${boardType }" method="POST" onsubmit="return check();">
				<div class="row d-flex justify-content-center" id="search">
					<div class="col-lg-9">
						<div class="input-group d-flex justify-content-center">
							<div class ="form-group row d-flex justify-content-center">
								<div class = "w100" style ="padding-right:10px;">
									<select size ="1" class ="form-control form-control-sm" name ="searchType" id ="searchType">
										<option value = "title" ${searchType eq "title" ? "selected" : "" }>제목</option>
										<option value = "writer" ${searchType eq "writer" ? "selected" : "" }>작성자</option>
										<option value = "content" ${searchType eq "content" ? "selected" : "" }>내용</option>
									</select>
								</div>
								<div style ="width : 400px; paddin-right:10px;">
									<input id ="searchContent" name="searchContent" type="text" class="form-control"
								placeholder="검색 내용" value ="${search }"> 
								</div>	
									<span class="input-group-btn"></span>	
									<input id=search_btn class="btn btn-danger"
									value="검색" type ="submit">
							</div>
						</div>
					</div>
				</div>
			</form>
			<div class="center">${pagenavi}</div>
		</div>
	</div>

<div>
	<select id = "choice" class ="selectpicker">
		<option class =""></option>
		<option class ="subject">제목</option>
		<option class = "user">작성자</option>
		<option class = "content">내용</option>
	</select>
</div>





	<script>
	
	
	$(document).ready(function(){
 		
 		$("a[name=mybtn]").css("background","white");
 		$("a[name=mybtn]").css("color","black");
 		$("#btn${boardType }").css("background","#c81a00");
 		$("#btn${boardType }").css("color","white");
 	
 	});
 	
	
	
	 function check(){
		 if(searchContent.value == ""	){
			 alert("검색내용을 입력해주세요")
			 searchContent.focus()
			 return false;
		 }
		 return true;
	 }
	  
	$("#test").click(function(){
		$("#search_type").slideToggle(300);
	});
	$("#search_type>li").click(function(){
		$("#test").html($(this).html());
		$("#type").val($(this).html());
		
	});
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
  

});


		 
	
</script>
	<form></form>
             
            
            </div>
         </div>
      </div>
       <div id="footer" class="py-5 bg-black ">

         <div class="container">
            <p class="m-0 text-center text-white small">Copyright &copy;
               Your Website 2019</p>
         </div>

      </div>

   </div>


   </div>



</body>
</html>