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
	      @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
   

div {
 /*   border: 1px solid black; */
   box-sizing: border-box;
   font-family: 'Nanum Gothic', sans-serif;
}
	#container{
		
	  height: 1500px;
      width: 100%;
		
		
		
	}


#content {
   float: left;
   height: 90%;
   width: 100%;
}
#footer { /* 모든페이지에 추가  */
   height: 5%;
   width: 100%;
   margin-top: 2000px;
   background: black;
   
}

	#title{
		margin-top: 7px;
	}

	input[id^=search]{
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
		#content1-2-2{
   float: left;
   height: 5%;
   width: 100%;
		
	}
		#content1-2-3{
	   float: left;
   height: 5%;
   width: 100%;
		
	
	}
		#content1-2-4{
   float: left;
   height: 5%;
   width: 100%;
		
	}
	
	#content1-2-5{
   float: left;
   height: 5%;
   width: 100%;
		
	}
	#content2-1{
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
	
	button[name=mybtn] {
   height: 100%;
   width: 100%;
   font-size: 25px;
   font-weight:bold;
   background:#c81a00;
   color:white;
   
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
	#emailanswer{
	
		width: 400px;
	}
	#answer{
		width: 400px;
	}
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
	#title{
		
		font-size : 60px;
		margin-right : 20px;
		color : #515151;
		
	}
	#btn{
	
		margin-left: 340px;
	}
	button[name=mybtn] {
   height: 100%;
   width: 100%;
   font-size: 25px;
   font-weight:bold;
   background:white;
   color:dimgrey;
   
}
	
	button[name=mybtn]:hover{                                    /*  */
    box-shadow:200px 0 0 150px rgba(200,26,0,1) inset; 
    }
    
    #removebtn{
    background:#c81a00;
   color:white;
    }
    
    #img_icon1{
   width:30px;
   height:30px;
}
#emailbtn{
 border: 0px;
   background: #c81a00;
   color:white;
   /*border:1px solid #999999;*/
   border-radius: 3px;
   font-size:17px;
   width:120px;
   height:38px;
   cursor: pointer;
   text-align:center; 
}
   #emailbtn:hover{
   box-shadow:-200px 0 0 0 rgba(255,255,255,0.5) inset;
   } 
	</style>
	
</head>

<body>
	
	
	<div id="container" >
	<div id= "header">
	<jsp:include page="/views/header/Header2.jsp"></jsp:include>
		</div>
	<div id="content">
		
		<div id = "content1">
		
		<div id = "content1-1">
		<center>
		<br>
		 <h1 style="color: dimgrey; font-weight: bold;">마이페이지</h1>
		</center></div>
		<div id= "content1-2">
		<div id = "content1-2-1">
				
			<a href="/updateReady"><button class="btn" name="mybtn">회원 정보 수정</button></a>
			</div>
			<div id = "content1-2-2">
				
			<a href="/views/member/Repwd.jsp"><button class="btn" name="mybtn">비밀번호 변경</button></a>
			</div>
				<div id = "content1-2-3">
		
		<button class="btn" name="mybtn" id="myboard">내가 쓴 글보기</button>
			
			
			</div>
				<div id = "content1-2-4">
		
			<button class="btn" name="mybtn" id="mycomment">내가 쓴 댓글보기</button>
			
			
			</div>
			<div id = "content1-2-5">
		
			<a href="/views/member/remove.jsp"><button class="btn" name="mybtn" id = "removebtn">회원탈퇴</button></a>
			
			
			</div>
			</div>
		</div>
		<div id = "content2">
		<div id = "content2-1">
		  &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png"
                     width="30px ">마이페이지 > 회원탈퇴
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;회원탈퇴</h1>
               <hr>
			</div>
		<div id ="content2-2">
			<div id="content2-2-1"></div>
			<div id="content2-2-2">
			<center>
			<br><br><br><br><br><br>
			
			 비밀번호 입력:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
			<div class="input-group mb-3" id="pwd">
    <input type="password" class="form-control" placeholder="비밀번호를 입력해주세요" id="pass" >
    <div class="input-group-append" >&nbsp;&nbsp;&nbsp;
     <input type="button" value="인증번호받기" id="emailbtn">
    </div>
  </div> 	
  </center>
  
  	<center>
  
    
		
    <input type="hidden" class="form-control" placeholder="인증번호입력" id="emailanswer" ><br>
   
   <input type="hidden" value="확인" id="btn" class ="btn btn-danger">
     
  
    	
 </center>
 </form>
 
 
 
			
			</div>
		
			<div id="content2-2-3"></div>
			<div></div>
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
	
	<script>
	
	$(document).ready(function(){
		
		 
		 var pass = $("#pass").val().trim();
		 var userId = '${sessionScope.member.userId }';
		 
		
		 $("#emailbtn").click(function(){
				
			 var pass = $("#pass").val().trim();
			 var userId = '${sessionScope.member.userId }';
		
			 $.ajax({
					url : "/answer",
					type : "POST",
					data : {pass : pass, userId : userId},
					success : function(data) {
						if (data == "false") {
							alert("비밀번호와 이메일을 확인하세요");
						} else {
							
							alert("이메일이 전송되었습니다.");
							$("#emailanswer").attr("type","text");
							$("#btn").attr("type","button");
							key = data;
						}

					}, fail : function(){
						alert("비밀번호와 이메일을 확인하세요");
					}
			 
		 
		 })
			
		 });
		 
		 $("#btn").click(function(){
			 
			 if($("#emailanswer").val()== key){
				 
				 var removeuser = prompt("정말 삭제합니다를 입력해주세요 ");
				 
				 if(removeuser == "정말 삭제합니다"){
					 
				 window.location.href="/remove?userId="+userId;
					 
				 }else{
					 
					 alert("정말 삭제합니다를 정확히 입력해주세요 ");
					
				 }
				
			 }else{
				 
				 alert("인증번호와 정말 삭제합니다를 정확히 입력해주세요.");
			 }
			 
		 });
		
		
		
			
		});
		
		
	$("#removebtn").click(function(){
		
		if(${sessionScope.member.loginType == "social"}){
			alert("소셜로그인은 지원하지 않는 서비스입니다.");
		}else{
			
			window.location.href="/views/member/remove.jsp";
			
		}		


});
	
	
	$("#myboard").click(function(){
		
		$.ajax({
			
		url : "/myboardcheck",
		type : "post",
		success : function(data){
			
			
			if(data=="fail"){
				
				alert("작성한 게시판이 없습니다.");
				
			}else{
				
				
				window.location.href="/myboard";
			}
			
		}
		
		
		});
		


});
				
		
		
	$("#mycomment").click(function(){
		
		$.ajax({
			
		url : "/myCommentcheck",
		type : "post",
		success : function(data){
			
			
			if(data=="fail"){
				
				alert("작성한 댓글이 없습니다.");
				
			}else{
				
				
				window.location.href="/myComment";
			}
			
		}
		
		
		});
		});

	
	
	
	
	
	
	
	</script>

	
	
	
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>