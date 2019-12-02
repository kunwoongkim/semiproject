<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*, java.util.ArrayList, singo.model.vo.Singo, singo.model.vo.PageData" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
   src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=obpxe2ta7w&submodules=geocoder">
   
</script>
   <script src="../../js/jquery-2.0.0.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
   <title>메인페이지</title>
   <script src="../../js/jquery-2.0.0.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name = "google-signin-client_id" content = "181826323862-29136l7je3lvb232vlm92q7a785hsq5n.apps.googleusercontent.com">

<style>
  @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
body{
 position: relative;
}
#img1{
position:absolute;
width:200px;
height:200px;
top:1100px;
left:2500px;

}

div {
 /*   border: 1px solid black; */
   box-sizing: border-box;
   font-family: 'Nanum Gothic', sans-serif;
}

#container {
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

#header1 {
   float: left;
   height: 100%;
   width: 25%;
   color: black;
}

#title{
      
      font-size : 60px;
      margin-right : 20px;
      color : #515151;
      
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

   margin: 0 auto;
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
   border:0;
   
  
   border-radius: 3px;
   cursor: pointer;
   text-align:center; 
 
   
}



table {
   border: 1px solid #EAEAEA;
}



td {
   height: 50px;
   width: 500px;
     
     font-size : 22px;
}



a:link {
   color: black;
   text-decoration: none;
  
}

a:visited {
   color: black;
   text-decoration: none;
  
}

#table {
   margin:0 auto;
   width:90%;
   height: 50%;
}
#menu{
    height:50px;
     font-size:25px;
}
#search{

   width:500px;
   
}
#houseName{
background-color: #fffef7;
}

#title-2{
border:bold;
font-size:55px;
color: #515151;
}


   #searchbtn{
      margin-top: 25px;
      height: 40px;
   }
input[name=filename]{

   float : left;
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
                  <h1 style="color: dimgrey; font-weight: bold;">신고접수확인</h1>
               </center>
            </div>
            <div id="content1-2">
               <div id="content1-2-1">

						<a href="/memberAll"><button class="btn" name="mybtn" id="btn3"
								>회원관리</button></a>
					</div>
					<div id="content1-2-2">
						<a href="/singoList"><button class="btn" name="mybtn" id="btn4" style=" background: #c81a00;color:white;">신고관리</button></a>
					</div>

            </div>
         </div>
         <div id="content2">
            <div id="content2-1">
             &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
                     src="/images/login_icon.png"
                     style="width:30px;
height:30px;">관리자페이지 > 신고내용확인
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;신고 내용</h1><hr>
               <br>
        
           
            

            <table class="table table-bordered" id="table">
            
               <tr>               
                  <th style="width:100px">제목 </th><td>${singo.title }</td>
                  <th style="width:200px">작성자</th><td> ${singo.reporterId }</td>
                  <th style="width:200px">신고<br>대상자</th><td> ${singo.reportedId }</td>
                  <th style="width:200px">신고종류</th><td> ${singo.reportType }</td>
                              
               </tr>
               <tr>
               
               <th style="width:100px" colspan="1">첨부<br>파일</th><td colspan="7"><a href="/singoDown?reportNo=${singo.reportNo }">${singo.fileName }</a></td>
               </tr>                     
               <tr>
                  <td colspan="8">
                     <div style = " height:500px; border : 1px solid #EAEAEA;">${singo.reportContent }</div>
                  </td>
               </tr>
               <tr>
                  <td colspan="8" style="text-align:center;">
                     
                        
          
                        <a href="/singoList" class="btn btn-danger" id="insertbtn" style="color:white">목록으로</a>
                        
                  </td>
               </tr>
               <input type="hidden" name="reportNo" value="${singo.reportNo }">         

            </table>

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

/* $('#btn').click(function(){
   $.ajax({
      
      url : "/singoDown",
      type : "POST",
      data : {file : ${singo.fileName}},
      success : function(data) {
         alert("첨부파일 다운 완료");
            
         }
      });
   
});
 */







</script>

  


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>