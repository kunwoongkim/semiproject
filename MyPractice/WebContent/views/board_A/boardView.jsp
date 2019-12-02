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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="icon/fontawesome/css/all.css" rel="stylesheet">


<script src=../../js/bootstrap.min.js></script>

<style>
@import
	url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap')
	;

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
	padding: 0.1em;
}

#content1-2 {
	float: left;
	height: 100%;
	width: 100%;
	padding: 0.1em;
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
	font-weight: bold;
	background: #c81a00;
	color: white;
}

#img_icon1 {
	width: 30px;
	height: 30px;
}

/* ##################################### */
#title1 {
	margin-top: 20px;
	margin-left: -28px;
	width: 1150px;
	padding: 10px;
}

#nick {
	width: 20%;
	position: absolute;
	margin-top: 30px;
	margin-left: -5px;
}

#date {
	width: 30%;
	position: absoulte;
	margin-top: 30px;
	margin-left: 400px;
}

#view_count {
	width: 32%;
	position: absoulte;
	margin-left: 760px;
	margin-top: -35px;
}

#comment {
	width: 100%;
}

.btn btn-danger btn-lg {
	float: left;
}

#t1, #t2, #t3, #t4, #t5 {
	background: #FFF7F7;
}

#t6, #t7 {
	background: #FFF7F7;
}

#t5 {
	min-height: 500px;
	height: 100%;
}

ul {
	list-style: none;
}

ul>li {
	float: left;
}

}
.commentList {
	margin-bottom: 5px;
}

#c_content_li {
	margin-left: 20px;
}

#commentset {
	border: 1px solid #C6C6C6;
	padding: 20px;
	border-radius: 5px;
}

#t6 {
	background-color: #FF6C6C;
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
						<a href="/boardA?boardType=A"><button class="btn" name="mybtn"
								id="btnA">Rh- A형 게시판</button></a>
					</div>
					<div id="content1-2-2">
						<a href="/boardA?boardType=B"><button class="btn" name="mybtn"
								id="btnB">Rh- B형 게시판</button></a>
					</div>
					<div id="content1-2-3">

						<a href="/boardA?boardType=AB"><button class="btn"
								name="mybtn" id="btnAB">Rh- AB형 게시판</button></a>
					</div>
					<div id="content1-2-4">
						<a href="/boardA?boardType=O"><button class="btn" name="mybtn"
								id="btnO">Rh- O형 게시판</button></a>
					</div>

				</div>
			</div>
			<div id="content2">
				<div id="content2-1">
					&nbsp; <br>
					<h6 style="color: gray">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
							src="/images/login_icon.png" width="30px ">커뮤니티 > 게시판
					</h6>

					<h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;RH-
						${boardType }형 게시판</h1>
					<hr>
				</div>


				<div id="content2-2">
					<div class=container>

						<div class="input-group" id=title1>
							<span class="input-group-addon" id="basic-addon1"> <i
								class="fas fa-align-justify fa-2x"></i>&nbsp;&nbsp;
							</span> <input type="text" class="form-control"
								aria-describedby="basic-addon1" value="${board.title }"
								disabled="disabled" id="t1">
						</div>

						<div class="input-group" id=nick>
							<span class="input-group-addon" id="basic-addon2"><i
								class="fas fa-male fa-2x"></i>&nbsp;&nbsp;</span> <input type="text"
								class="form-control" aria-describedby="basic-addon2"
								value="${board.userNickName }" disabled="disabled" id="t2">
						</div>



						<div class="input-group" id=date>
							<span class="input-group-addon" id="basic-addon3"><i
								class="fas fa-calendar-alt fa-2x"></i>&nbsp;&nbsp;</span> <input
								type="text" class="form-control" aria-describedby="basic-addon3"
								value=<c:if test = "${board.modDate == null }"><fmt:formatDate value="${board.makeDate }" pattern="yyyy.MM.dd　HH:mm"></fmt:formatDate></c:if>
								<c:if test = "${board.modDate != null }"><fmt:formatDate value="${board.modDate }" pattern="yyyy.MM.dd　HH:mm"></fmt:formatDate></c:if>
								disabled="disabled" id="t3">
						</div>






						<div class="input-group" id=view_count>
							<span class="input-group-addon" id="basic-addon4"><i
								class="fas fa-eye fa-2x"></i>&nbsp;&nbsp;</span> <input type="text"
								class="form-control" aria-describedby="basic-addon4"
								value="${board.clickCount }" disabled="disabled" id="t4">
						</div>



						<br> <br>
						<div class="form-group">
							<label for="t5"><i class="far fa-comment-alt fa-2x"></i></label><br>
							<div class="form-control" id="t5">
								<div>
									<c:if
										test="${board.photoOriginFilename != null || board.photoRenameFilename != null}">
										<c:if test="${board.photoRenameFilename == null }">
											<img src="/upload/boardPhoto/${board.photoOriginFilename}">
										</c:if>
										<c:if test="${board.photoRenameFilename != null }">
											<img src="/upload/boardPhoto/${board.photoRenameFilename}">
										</c:if>
									</c:if>
								</div>
								${board.boardContent }
							</div>
						</div>
						<br>





						<c:if test="${ sessionScope.member == null}">
							<div class="alert alert-danger">
								로그인이 필요합니다.&nbsp;<a
									href="#"
									data-toggle="modal" data-target="#myModal" class="alert-link">로그인</a>&nbsp;<a href="#" class="alert-link">
									/ 회원가입</a>
							</div>
						</c:if>

						<c:if test="${sessionScope.member.userId == board.userId}">
							<a style="color: white;" class="btn btn-danger btn-lg"
								role="button"
								href="/boardUpdate?boardNumber=${board.boardNumber }&boardType=${boardType }">수정</a>&nbsp;&nbsp;
			<a style="color: white;" class="btn btn-danger btn-lg" role="button"
								href="/boardDelete?boardNumber=${board.boardNumber }&boardType=${boardType }"
								onclick="delQuestion();">삭제</a>
						</c:if>




						<a style="color: white;" href="/boardA?boardType=${boardType }"
							class="btn btn-danger btn-lg pull-right" role="button">목록으로</a> <br>
						<br> <br> <i class="far fa-comment fa-2x"></i>
						<c:if test="${ sessionScope.member != null }">

							<form action="/insertComment" method="POST">
								<input type="hidden" name="commentSubNo"
									value="${board.boardNumber }"> <input type="hidden"
									name="commentLevel" value="0"> <input type="hidden"
									name="recommentSubNo" value="0"> <span> <textarea
										style="margin-top: 30px; width: 100%; resize: none; min-height: 100px; text-ver: top;"
										name="commentContent" placeholder="댓글을 입력해주세요"> </textarea> <input
									type="hidden" name="commentNickName"
									value="${sessionScope.member.userNickName }">
									<button style="margin-top: 10px;"
										class="btn btn-danger btn btn-lg pull-right" type="submit">작성</button>
								</span>
							</form>
							<br>
							<br>
							<br>
							<br>
						</c:if>
						<hr style="border: solid 1px #FF6C6C">
						<c:forEach items="${commentList }" var="comment">
							<c:if test="${comment.commentLevel  == 0}">
								<input type="hidden" value="${comment.commentSubNo }"
									id="commentSubNo">
								<div
									style="background-color: #FFF7F7; min-height: 80px; max-height: 9999999999px; padding: 0px;"
									id="commentset">
									<table id="writetable">
										<tr>
											<th
												style="padding: 0 0 0 15px; background-color: #FF6C6C; color: white; width: auto; min-width: 100px; height: 80px;">
												${comment.commentNickName }</th>
											<td class="c_content" id="c_content"
												style="padding: 0 0 0 15px; word-break: break-all; wrap: hard; background-color: #FFF7F7; width: 900px;">${comment.commentContent }</td>
											<td><input
												style="word-break: break-all; wrap: hard; height: 80px; width: 870px; display: none;"
												class="updateForm" id="updateForm" type="text"
												value="${comment.commentContent }"
												placeholder="수정할 내용을 작성해주세요."></td>
											<td><button style="margin-left: 15px; display: none;"
													id="updatebutton" class="btn btn-danger btn-sm pull-right"
													onclick="commentUpdateCommit(this , ${comment.commentNo});">수정</button></td>
											<td><button style="margin-left: 10px; display: none;"
													id="canclebutton" class="btn btn-danger btn-sm pull-right"
													onclick="commentCancle(this);">취소</button></td>
											<c:if
												test="${sessionScope.member.userNickName == comment.commentNickName }">
												<td
													style="border-left: 3px solid #EAEAEA; background-color: #FFF7F7; padding: 0 0 0 15px;">
													<div id="fucntion_icon" class="fucntion_icon">
														<%-- <button role="button" class="btn btn-danger btn-sm"
															onclick="commentRe(this ,${comment.commentNo});">
															<i class="far fa-comments"></i>
														</button> --%>
														<button class="btn btn-danger btn-sm"
															onclick="commentUpdate(this ,${comment.commentNo})">
															<i class="fas fa-pen-nib"></i>
														</button>
														<button role="button" class="btn btn-danger btn-sm"
															onclick="commentDelete(this ,${comment.commentNo});">
															<i class="fas fa-trash-alt"></i>
														</button>
													</div>
												</td>
											</c:if>

										</tr>

									</table>
								</div>

								<br>

								<br>

							</c:if>
							<div id="recomment">
								<form action="/insertRecomment" method="post" id=>
									<input type="hidden" name="commentSubNo"
										value="${comment.commentSubNo }"> <input type="hidden"
										name="boardCommentLevel" value="1"> <input
										type="hidden" name="recommentSubNo"
										value="${comment.commentNo }">
									<!-- 	<span style = "margin-bottom : 40px;">
				<i class="fas fa-plus"></i>
				</span> -->
									<input id="recommentwriteform"
										style="display: none; height: 40px; word-break: break-all; wrap: hard; margin-bottom: 100px; margin-left: 70px; width: 80%; resize: none; min-height: 50px; text-ver: top;"
										name="recommentContent" placeholder="덧글을 입력해주세요">
									<button style="display: none; margin-left: 5px;"
										class="btn btn-danger btn btn-sm" type="submit">작성</button>
									<button style="display: none; margin-left: 5px;"
										class="btn btn-danger btn btn-sm" type="button"
										onclick="commntrecancle();">취소</button>

								</form>
							</div>

							<c:forEach items="${list }" var="commentRe">
								<c:if
									test="${commentRe.boardCommentLevel != 0 && comment.commentNo==commentRe.boardCommentRef}">

								</c:if>
							</c:forEach>
						</c:forEach>
					</div>








	<script>
					$(document).ready(function(){
				 		
				 		$("button[name=mybtn]").css("background","white");
				 		$("button[name=mybtn]").css("color","black");
				 		$("#btn${boardType }").css("background","#c81a00");
				 		$("#btn${boardType }").css("color","white");
				 	
				 	});			
					
					
	function commentDelete(obj,commentNo){
		var check = confirm("삭제하시겠습니까?");
		var commentSubNo = $("#commentSubNo").val();
		if(check)location.href="/commentDelete?commentNo="+commentNo+"&commentSubNo="+commentSubNo;
	}
	
	function commentUpdate(obj ,commentNo){
		$(".updateForm").attr("type" , "text")
		$(obj).parent().parent().hide();	//td 삭제
		$(obj).parents('tr').find("td").first().hide();
		$(obj).parents('tr').find("td>button").show();
		$(obj).parents('tr').find("td>input").show();
		/* $(".c_content").hide();
		$(".fucntion_icon").hide();
		$(".btn btn-danger btn-sm pull-right").show();
		$(".btn btn-danger btn-sm pull-right").show(); */
	}
	function commentCancle(obj){
		$(obj).parents('tr').find("td").first().show();
		$(obj).parents('tr').find("td>button").hide();
		$(obj).parents('tr').find("td>input").hide();
		$(obj).parents('tr').find('td').last().show();
		$(obj).parents('tr').find('td').last().find('button').show();
		
		
		/* $("#updateForm").attr("type" , "hidden")
		$("#c_content").show();
		$("#fucntion_icon").show();
		$("#updatebutton").hide();
		$("#canclebutton").hide(); */
	}
	
	function commentUpdateCommit(obj , commentNo){
		var commentSubNo = $("#commentSubNo").val();
		var commentContent = $(obj).parent().prev().children().val();
 	
		location.href = "/commentUpdate?commentNo=" + commentNo + "&commentSubNo=" + commentSubNo +"&commentContent=" + commentContent		
	}
	
	
	function commentRe(obj,commentNo){			
	 $(ojb).parents('tr').parent().parent().next().next().slideToggle(300);
	 $(obj).parents('tr').parent().parent().next().next().slideToggle(300);
	}
	
	function commntrecancle(obj){
		$("#recomment").find("input").hide();
		 $("#recomment").find("button").hide();
	}
		

		
		
		function delQuestion() {
			var check = window.confirm("정말로 삭제 하시겠습니까?");

			if (check) {
				return true;
			} else {
				return false;
			}
		}
	</script>

				</div>
			</div>
		</div>


	</div>


	</div>



</body>
</html>