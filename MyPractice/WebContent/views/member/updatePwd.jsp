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
   
      #content1-2-1{
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
   #content2-2-1{
       float: left;
      height:100%;
      width:15%;
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
   background:white;
   color:dimgrey;
   
}
button[name=mybtn]:hover{                              
    box-shadow:200px 0 0 150px rgba(200,26,0,1) inset; 
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
       a:link { color: black; text-decoration: none;}
       a:visited { color: black; text-decoration: none;}
   
   #title{
      
      font-size : 60px;
      margin-right : 20px;
      color : #515151;
      
   }
   #pwdbtn{
    border: 0px;
   background: #c81a00;
   color:white;
   border-radius: 3px;
   cursor: pointer;
   text-align:center; 
   }
   #gobtn{
    border: 0px;
   background:#caced2;
   color:white;
   /*border:1px solid #999999;*/
   border-radius: 3px;
   font-size:17px;
   width:120px;
   height:38px;
   cursor: pointer;
   text-align:center; 
   
   }
   
   #submit{
    border: 0px;
   background: #c81a00;
   color:white;
   border-radius: 3px;
   font-size:17px;
   width:280px;
   height:38px;
   cursor: pointer;
   margin-right:320px;
  
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
       <h1 style="color: dimgrey; font-weight: bold;">비밀번호변경</h1>
      </center>
      </div>
      
      <div id= "content1-2">
        
         </div>
      </div>
      <div id = "content2">
      <div id = "content2-1"> &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <img id="img_icon1" src="/images/login_icon.png" width="30px ">비밀번호찾기 > 비밀번호변경
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;비밀번호변경</h1>
               <hr>
         </div>
      <div id ="content2-2">
         <div id="content2-2-1"></div>
         <div id="content2-2-2">
         <center>
         <br><br><br><br><br><br>
      
 
  
 
 
   <form action="/RePwd" method="post" id="updatepassword">   
    변경할 비밀번호 입력:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
         <div class="input-group mb-3" id="pwd">
    <input type="password" class="form-control" placeholder="비밀번호를 입력해주세요" name="password" id="pass" >
    <div class="input-group-append" >
     
    </div>
  </div>    
  </center>
      <c:if test="${sessionScope.member != null}">
     <input type="hidden" name="userId" value="${member.userId }">
    </c:if>   
    <c:if test="${sessionScope.member == null}">
     <input type="hidden" name="userId" value="${param.userId }">
     </c:if>   
   <center>
         
         변경할 비밀번호 확인:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
         <div class="input-group mb-3" id="pwd">
         
    <input type="password" class="form-control" placeholder="비밀번호를 입력해주세요"  id="REPWD">
     <input type="button" value="확인" id="gobtn"><br><br><br><br>
   
  </div>    
  </center>
            
   <center>
         
      
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
      <input type="submit"  class = "btn btn-success" id="submit">   
  </center>
         </form>
         
         </div>
      
         <div id="content2-2-3"></div>
         <div></div>
         </div>
      </div>
      </div>
   <div id= "footer">
      <center><h6 style="color: darkgray">Copyright KH Corp.All rights reserved</h6></center>
      </div>
   
   </div>
      
      <script>
   $(document).ready(function(){
      
      var   flag = false;
      $("#gobtn").click(function(){
         
         
         if($("#pass").val() == ""){
            
            alert( "비밀번호를 입력해주세요");
            flag=false;
            
         }else if (!(/[a-zA-Z0-9]{8,10}$/.test($("#pass").val()))) 
         {
         
            alert( "비밀번호는 소문자,대문자,숫자 중 8~12글자로 입력 바랍니다.");
            flag = false;
         }else if($("#REPWD").val() == ""){
            
            alert( "비밀번호확인을 입력해주세요");
            flag=false;
            
         }else if (!($("#pass").val() == $("#REPWD").val())) 
         {
         
            alert( "비밀번호가 일치 하지않습니다");
            flag = false;
         
         }else{
                         
            alert( "비밀번호가 일치합니다");
            flag = true;       
                         
      }
      })
      
   
         $("#submit").click(function(){
            
            if(flag == true)
               {   
               return true;               
               }else{
               alert( "비밀번호를 확인해주세요");
               return false;
               }
            
         })
         
            
      
      
      })   
   
   
   
   
   
   
   
   </script>

   
   
   
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>