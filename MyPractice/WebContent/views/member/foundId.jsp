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
   /*     border: 1px solid black;  */
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
   margin-top: 2200px;
   background: black;
   
}
#header1 {
   float: left;
   height: 100%;
   width: 25%;
   color: dimgrey;
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
   height: 10%;
   width: 100%;
}

#content1-2-2 {
   float: left;
   height: 5%;
   width: 100%;
}
      #content1-2-3{
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
      
      <div id = "content1-1"><center>
      <br>
      <h1 style="color: dimgrey; font-weight: bold;">회원 서비스</h1>
      </center></div>
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
         
   <p style="font-size : 30px">회원님의 아이디는 <span style="font-size : 40px">${param.userId }</span> 입니다</p> <br>
   <a href="/views/member/findPw.jsp" class="btn btn-danger" style="width:200px; color:white">비밀번호 찾기</a> 
 <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal" style="width:200px; color:white"><b>LOGIN</b></button>
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
   
<script type="text/javascript">

 
 
</script>
   
   
   
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>



<%-- 
 --%>