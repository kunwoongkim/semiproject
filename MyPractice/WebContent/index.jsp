

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
   <title>메인페이지</title>
   <script src="../../js/jquery-2.0.0.js"></script>
   <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta name = "google-signin-client_id" content = "181826323862-29136l7je3lvb232vlm92q7a785hsq5n.apps.googleusercontent.com">


<!-- Bootstrap core CSS -->
  <link href="/META-INF/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/one-page-wonder.min.css" rel="stylesheet">
  
  
<style>
   body{
      /* margin-left : 300px; */
   
      
   }
   div{
      /*  border : 1px solid black;   */
      box-sizing: border-box;
   }
   #container{
      
      height: 1500px;
      width: 100%;
      
      
   }

   
   
   #content{
      height: 90%;
      width: 100%;
      
   }
   #footer { /* 모든페이지에 추가  */
      height: 5%;
      width: 100%;
      margin-top: 1700px;
      background: black;
      
   }
   
   #title{
      
      font-size : 60px;
      margin-right : 20px;
      color : #515151;
      
   }


   input[id^=search]{
      margin-top: 25px;
      width : 50px;
   }
   
   #content1{
       float: left;
      height: 60%;
      width: 100%;
      
   }
   #content2{
       float: left;
      height: 40%;
      width: 100%;
      
   }
   #content1-1{
       float: left;
      height: 100%;
      width: 80%;
   }
   #content1-2{
       float: left;
      height: 100%;
      width: 20%;
      background-color: #5D5D5D;
      border-top-left-radius:5px;
      border-top-right-radius:5px;
      border-bottom-right-radius:5px;
      border-bottom-left-radius:5px;
   }
   
   #content2-1{
       float: left;
      height: 100%;
      width: 33.3%;
      background-color: #B5EACC;
   }
   #content2-2{
       float: left;
      height: 100%;
      width: 33.3%;
      background-color: #FFF2E6;
   }
   #content2-3{
       float: left;
      height: 100%;
      width: 33.3%;
      background-color: #DDD9CE;
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
      margin-top: 25px;
      height: 40px;
   }
   .material-icons{
      margin-right: 2px;
      margin-top: 2px
      
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
    a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 
   #img-a,#img-b,#img-c{
      width: 500px;
      height:500px;
      border-radius: 250px;
}


.container-1{
   float: left;
   hight:300px;


}
#loginbtn{
      width: 200px;
      height: 100px;
      margin-bottom: 3px;
   }
   
.row align-items-center{
      height :33%;
      width : 100%;

}
#qweqwe{
   margin-top : 400px;

}
#title2{
font-weight:400;

}
   </style>
   
   
   
</head>

<body>

   
   <div id="container" >
   
      <jsp:include page="/views/header/Header.jsp"></jsp:include>
   
   <div id="content">
      <div id="content1">
         
         <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
   
      
       <img src="/images/3.jpg" name ="carimg" style="width:100%; height:1230px;">
    </div>
   
     <div class="carousel-item">
      <img src="/images/4.jpg" name ="carimg" style="width:100%; height:1230px;">
    </div>
      <div class="carousel-item">
      <img src="/images/1.jpg" name ="carimg" style="width:100%; height:1230px;">
    </div>
     
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
         </div>
<div id="content2">   
<center>
       <section>
      
    <div class="container-1">
      <div class="row align-items-center" id ="qweqwe">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
            <img id="img-a" class="img-fluid" src="/images/4.jpg">
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4" id="title2"><a href="/boardA?boardType=A"><b>Community</b></a></h2>
            <p>단 한명의 Rh(-)혈액 보유자라도 곤란을 겪는 일이 없도록 소통하는 Community입니다. 우리는 언제 수혈을 받을 상황에 처할지 모릅니다. 건강할 때 헌혈하는 것은 자신과 사랑하는 가족을 위하여, 더 나아가 모두를 위한 사랑의 실천입니다.</p>
          </div>
        </div>
      </div>
    </div>
  
  </section>

  <section>
    <div class="container-1">
      <div class="row align-items-center">
        <div class="col-lg-6">
          <div class="p-5">
            <img id="img-b" class="img-fluid" src="/images/3.jpg">
          </div>
        </div>
        <div class="col-lg-6">
          <div class="p-5">
            <h2 class="display-4" id="title2"><a href = "/bloodHouse"><b>Blood donation</b></a></h2>
            <p>헌혈은 수혈이 필요한 환자의 생명을 구하는 유일한 수단입니다. 혈액은 아직 인공적으로 만들 수 있거나, 대체할 물질이 존재하지 않습니다.우리는 언제 수혈을 받을 상황에 처할지 모릅니다. 건강할 때 헌혈하는 것은 자신과 사랑하는 가족을 위하여, 더 나아가 모두를 위한 사랑의 실천입니다.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section>
    <div class="container-1">
      <div class="row align-items-center">
        <div class="col-lg-6 order-lg-2">
          <div class="p-5">
            <img id="img-c" class="img-fluid" src="/images/5.jpg">
          </div>
        </div>
        <div class="col-lg-6 order-lg-1">
          <div class="p-5">
            <h2 class="display-4" id="title2"><a href="/views/payment/payment.jsp"><b>Help save a life!</b></a></h2>
            <p>혈액의 성분 중 한 가지 이상이 부족하여 건강과 생명을 위협받는 다른 사람을 위해, 건강한 사람이 자유의사에 따라 아무 대가 없이 자신의 혈액을 기증하는 사랑의 실천이자, 생명을 나누는 고귀한 행동입니다.</p>
          </div>
        </div>
      </div>
    </div>
  </section> 
</center>
  </div>
  </div>   
 <div id="footer"  class="py-5 bg-black">
  
  
 
    <div class="container">
      <p class="m-0 text-center text-white small">Copyright &copy; Your Website 2019</p>
    </div>
    
  </div> 
   
 <!-- Bootstrap core JavaScript -->
 
   
   </div>

   
   
   
   
   
    <script src="/META-INF/vendor/jquery/jquery.min.js"></script>
  <script src="/META-INF/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
       <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>




</body></html>