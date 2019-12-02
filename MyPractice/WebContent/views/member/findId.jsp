<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "member.model.vo.Member,java.util.*"%>

 
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   
   <title>Insert title here</title>
   <script src="../../js/jquery-2.0.0.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name = "google-signin-client_id" content = "181826323862-29136l7je3lvb232vlm92q7a785hsq5n.apps.googleusercontent.com">

<style>

   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
   
div {
    /*    border: 1px solid black;  */
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
   margin-top: 2200px;
   background: black;
   
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
   font-size: 25px;
   font-weight:bold;
   background:#c81a00;
   color:white;
   
}

td {
   height: 50px;
   width: 40px;
}

#table {
   width: 70%;
   height: 100%;
}
   #searchbtn{
      margin-top: 25px;
      height: 40px;
   }
   
      #title{
      
      font-size : 60px;
      margin-right : 20px;
      color : #515151;
      
   }
   
   #loginbtn{
      width: 400px;
      height: 60px;
      margin-bottom: 3px;
   }
   
   
   #userId{
      width: 400px;
      height: 40px;
   }
   #userPwd{
      width: 400px;
      height: 40px;
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
       a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 #content1-1 {
   float: left;
   height: 10%;
   width: 100%;
   border-right: 0.1em solid #dddfe3;
   padding:0.1em;
}
#img_icon1{
   width:30px;
   height:30px;
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
      <h1 style="color: dimgrey; font-weight: bold;">회원 서비스</h1>
      </center>
      </div>
      <div id= "content1-2">
      <div id="content1-2-2">
                  <a href="#"><button class="btn" name="mybtn">아이디 찾기</button></a>
               </div>
         </div>
      </div>
      <div id = "content2">
      <div id = "content2-1">
         &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png"
                     width="30px ">회원서비스 > 아이디 찾기
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;아이디 찾기</h1><hr>
            
         
         </div>
      <div id ="content2-2">
         <div id="content2-2-1"></div>
         <div id="content2-2-2">
         <center>
         <br><br><br><br><br><br>
         
         이름을 입력해주세요:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
         <div class="input-group mb-3" id="pwd">
    <input type="text" class="form-control" placeholder="이름을 입력해주세요" id="userName" name="userName">
    <div class="input-group-append" >
    
    </div>
  </div>    
  </center>
  
     <center>
 
       이메일을 입력해주세요:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
         <div class="input-group mb-3" id="emailanswerdiv">
    <input type="text" class="form-control" placeholder="이메일을 입력해주세요" id="email" name = "email">
    <div class="input-group-append" >
      <input type="button" value="확인" id="btn">
    </div>
  </div>    
 </center>

 
 
 
         
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
   
<script type="text/javascript">

   $("#btn").click(function(){
         
      var userName = $("#userName").val();
      var email = $("#email").val();
      $.ajax({
         
         url : "/findId",
         type : "POST",
         data : {userName : userName, email : email},
         success : function(data) {
            if (data == "false") {
               alert("이름과 이메일을 확인하세요");
               
            } else if(data == "social"){
               
               alert("소셜 회원은 해당 플렛폼에서 아이디를 확인해주세요");
               
            } else{
               
               window.location.href="/views/member/foundId.jsp?userId="+data;
            }

         }
      
      
      });
      
   
   
   
   })
   
   
   
   


</script>
   
   
   
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body></html>