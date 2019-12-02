<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성 페이지</title>
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
<script src = /js/jquery-2.0.0.js></script>
<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>
<script type ="text/javascript"></script>  

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

#reset{
		margin-left : 10px;
	}
	
	 #basic-addon4{
  		background: #FF6C6C;
  		color : white;
  		height : 36px;
  		width : 50px;
  		margin-top :7px;
  		text-align : center;
  		border-bottom-left-radius: 5px;
  		border-top-left-radius: 5px;
  		line-height : 36px;
  }
  
  #summernote , #title1{
  		background: #FFF7F7;
  }
  
  .write_info2 {
   float: left;
   width: 100%;
   height: auto;
   border-top: 2px solid crimson;
   padding: 20px;
}

.info_text {
   float: left;
   width: 80%;
   height: auto;
   border-top: 2px solid crimson;
   border: 1px solid gray;
   text-align: left;
   padding: 10px;
}

.imgbtn{
   float: left;
   width: 20%;
   height: auto;
   text-align: right;
   
}  

#title_input{
	width : 
}

#title1 {
   margin-top: 7px;
   
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

                 <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;RH- ${param.boardType }형 게시판</h1>
               <hr>
            </div>

            <div id="content2-2">
      <div class = "container">


<form action = "/boardAWrite" method="post" name ="writeform" enctype ="multipart/form-data" onsubmit ="return writeCheck();">
<input type ="hidden" name = "boardNickName" value ="${sessionScope.member.userNickName }">
<input type ="hidden" name = "boardId" value ="${sessionScope.member.userId }">
<div class ="input-group" id = title_input>
	<span class = "input-group-addon" id = "basic-addon4" >제목</span>
	<input id = "title1" name = "subject" type = "text" class = "form-control input" aria-describedby = "basic-addon4" placeholder = "제목을 입력해주세요.">
</div>
<br>
		<div class="write-main">
		<textarea class="form-control" id="CKEditor" name="content"></textarea>
		<script type ="text/javascript">
				CKEDITOR.replace('CKEditor' ,
					{height : 500 ,
						});
			</script>
			</div>
		<input type="hidden" id = "boardType" name="boardType" value="${param.boardType }">	
		<input type="hidden" name="boardNumber" value="${board.boardNumber }">
		<div class="write_info2">
              <div class="info_text"><span style="color:crimson">* 통신환경에 따라 고용량의 이미지의 업로드가 실패할 수 있습니다.</span>
                <img id ="img-viewer" width = "350">
              </div>
            <div class="imgbtn"><input type = "file" name = "upfile" onchange = "fn_loadImg(this)" data-width="300" data-height="300"></div>
         </div>
		<br>
		<input style = "margin-top : 5px; margin-left : 8px;" id = reset class = "btn btn-danger btn-lg pull-right" type ="button" value ="취소" onclick ="reset_click();"> 
		<input style = "margin-top : 5px; margin-left : 8px;" id = submit class = "btn btn-danger btn-lg pull-right" type ="submit" value ="작성">
</form>
</div>		

<script>
   function fn_loadImg(f) {
      //console.log(f.files); // fileList
      //console.log(f.files[0]) // File
      
      if (f.files && f.files[0]) {
         var reader = new FileReader();
         // 파일읽기 메소드
         reader.readAsDataURL(f.files[0]);
         // 읽기 완료시 onload 이벤트 발생
         reader.onload = function(e) {
            $("#img-viewer").attr("src",e.target.result); 
            // FileReader 객체의 result에는 파일의 컨텐츠가 담겨있음
         }
      }
   }
   </script>


<script language ="javascript">	
$(document).ready(function(){
	
	$("button[name=mybtn]").css("background","white");
	$("button[name=mybtn]").css("color","black");
	$("#btn${param.boardType }").css("background","#c81a00");
	$("#btn${param.boardType }").css("color","white");

});	
	$('.dropdown-toggle').dropdown()
	
	
	
	
	/* function writeCheck(){
		 if($.trim($("#title1").val())==""){
			   alert("제목를 입력하세요.");
			   $("#title1").val("").focus();
			   return false;
			  } 
			  if($.trim($("#CKEditor").val())==""){
			   alert("내용을 입력하세요");
			   $("#CKEditor").val("").focus();
			   return false;
			  }
			 */


	
	



	function reset_click(){
		var check = confirm("취소하시겠습니까? 작성된 내용은 저장되지 않습니다.");
		if(check)location.href='/boardA?boardType='+$("#boardType").val() ;
	}
</script> 
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