<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="member.model.vo.Member,java.util.*"%>

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
/*    border: 1px solid black; */
   box-sizing: border-box;
   font-family: 'Nanum Gothic', sans-serif;
}

#container {
      
     height: 1500px;
      width: 100%;
}

#header {
   height: 7%;
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
       .btn2 {
         
         font-size: 25px;
         font-weight:bold;
         background:white;
         color:gray;
        }
        
        .btn1{
        
         font-size: 25px;
         font-weight:bold;
         background:#c81a00;
         color:white;
        }

button[name=mybtn] {
   height: 100%;
   width: 100%;
   border : 0;
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




table {
   border: 1px solid #EAEAEA;
}



td {
   height: 50px;
   width: 500px;
     text-align : center;
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
   width: 90%;
   height: 50%;
    align : center;
   
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
                  <h1 id="title-2"  style="color: dimgrey; font-weight: bold;">신고접수</h1>
               </center>
            </div>
            <div id="content1-2">
               <div id="content1-2-1" >

                  <a href="/views/report/report.jsp"><button class="btn1" name="mybtn" >신고접수</button></a>
               </div>

             <div id="content1-2-2" >

                  <a href="/reportList"><button class="btn2" name="mybtn" >신고접수확인</button></a>
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
height:30px;">고객센터 > 신고접수
               </h6>
            
               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;신고접수</h1><hr>
               
         <br>
         
         <table class="table table-bordered" id="table" align = "center" >
            
            <tr>               
               <th style="width:100px">제목</th><td><input type="text" class="form-control" id="titleid" name="title" style = "width : 400px"></td>
               <th style="width:200px">작성자</th><td><p class="form-control" id="writer" name="writer" >${member.userId } <p></td>
               <th style="width:200px">신고<br>대상자(닉네임)</th><td><input type="text" class="form-control" id="report" name="report" ></td>
               <th style="width:200px">신고<br>종류</th><td>
               
               <select id = "type" name="type">
               <option>언어폭력</option>
               <option>음란성광고</option>
               <option>부적절한 닉네임</option>
               <option>기타</option>
               </select>
               
               
               </td>
                           
            </tr>
            <tr>
            <form action="/report" method="post" enctype="multipart/form-data"><th style="width:100px" colspan="1">첨부<br>파일</th><td colspan="7"><input type="file" id ="file" name="filename"></td></form>
            
            </tr>                     
            <tr>
               <td colspan="8">
                  <textarea rows="20" class="form-control"  placeholder="※선택하신 신고 종류에 대한 사유와 자료를 자세하게 작성해주세요.※" id="contentarea" name="contentarea"></textarea>
               </td>
            </tr>
            <tr>
               <td colspan="8" style="text-align:center;">
                  <button type="submit" class="btn btn-danger" id="insertbtn">등록</button>
               
               </td>
            </tr>         
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

   $("#insertbtn").click(function(){
      var title = $("#titleid").val();
      var writer = "${member.userId }";
      var report   = $("#report").val();
      var type = $("#type").val();
      var file = $("#file").val();
      var contentarea = $("#contentarea").val();
      console.log(file);
      if(title==""){
         
         alert("제목을 입력해주세요");
         return false;
      }else if(writer==""){
         
         alert("작성자를 입력해주세요");
         return false;
      }else if(report==""){
         alert("신고대상자를 입력해주세요");
         return false;
      }else if(contentarea == ""){
         alert("신고내용을 입력해주세요");
         return false;
      }else{
            var form = $('#upload')[0];
               var formData = new FormData(form);
               formData.append("filename",$("#file")[0].files[0]);
               formData.append("title",title);
               formData.append("writer",writer);
               formData.append("report",report);
               formData.append("type",type);
               formData.append("contentarea",contentarea);
               console.log(formData);
         $.ajax({
                     
                  url : "/report",
                  type : "post",
                   processData: false,
                       contentType: false,
                  data : formData,
                  success : function(data){
                              
                        if(data == "success"){
                           
                           alert("신고접수가 완료되었습니다");
                           window.location.href="/reportList";
                        }else{
                           
                           alert("신고접수를 실패 했습니다.");
                           
                        }            
                     
                  }
               
               
               
               })  

         
         
         
         } 
         
         
      });
      
      
      
   
   

   





</script>

  


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>