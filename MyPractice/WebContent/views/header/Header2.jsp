<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
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
    
       
   

 <style type="text/css">
   
   
   @import url('https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap');
    @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
   
    a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
   
/*    div{
       border : 1px solid black;  
   
   } */
   
   #header{
      height: 5%;
      width: 100%;
      background : #c81a00;
      
      
   }
   
   
      #title{
      
      font-size : 45px;
      margin-right : 20px;
      color : white;
      font-family: 'Kaushan Script', cursive;
      
   }
   
   #loginbtn{
      width: 400px;
      height: 50px;
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
   #header1{
   
      float: left;
      height: 100%;
      width: 18%;
      color: black;
      
      
   }
   #header2{
       float: left;
      height: 100%;
      width: 70%;
      
   } 
   #header3{
      float: left;
      height: 100%;
      width: 12%;
   
      
   }
   
   #searchbtn{
   margin-top: 10px;
   height: 40px;
   font-size :20px;
   }


  #loginimg {
            float: left;
            height: 30px;
            width: 30px;
        }
        #kakao-login-btn{
width:300px;
height:70px;
}
   </style>
   
</head>

<body>
   <nav class="navbar fixed-top" style="background:#c81a00;">
   <div id= "header">
   
   
   
   <div id="header1"><center><a id ="title" href="/index.jsp">RED LINE</a></center></div>
   <div id="header2" >
      <nav class="navbar navbar-expand-sm" id="nav" style="font-family: 'Jua', sans-serif;">
   <div class="navbar navbar-default navbar-right" id="navdiv" >
      <ul class="nav navbar-nav" style="width:1000px"   >
      
         <li class="nav-item dropdown " style="width:14%;"><a href="#" class="nav-link dropdown-toggle" id= "navbardrop" data-toggle="dropdown" style="color:white;  font-size : 16px">COMMUNITY</a>
         <div class="dropdown-menu">
         <a class="dropdown-item" href="/boardA?boardType=A">A형 게시판</a>
         <a class="dropdown-item" href="/boardA?boardType=B">B형 게시판</a>   
         <a class="dropdown-item" href="/boardA?boardType=AB">AB형 게시판</a>  
           <a class="dropdown-item" href="/boardA?boardType=O">O형 게시판</a>       
            </div>
         </li>
         <li style="width:11%"><a href="/noticeList.do" class="nav-link" style="color:white;font-size : 16px">공지사항</a></li>
         <li style="width:14%"><a href="/views/blood_info/blood_info.jsp" class="nav-link" id= "navbardrop" style="color:white; font-size : 16px; font-family: 'Jua', sans-serif;">희귀혈액지식</a>
         </li>
         <li style="width:14%"><a href="/bloodHouse" class="nav-link" style="color:white; font-size : 16px">헌혈의집찾기</a></li>
         <li style="width:14%"><a href="/views/payment/payment.jsp" class="nav-link" style="color:white; font-size : 16px">후원캠페인</a></li>
         <c:if test="${sessionScope.member != null && sessionScope.member.userId != 'admin'}">
         <li class="nav-item dropdown" style="width:14%"><a href="/myPage"  class="nav-link" style="color:white;font-size : 16px">마이페이지</a>
            <li class="nav-item dropdown" style="width:14%"><a href="/views/report/report.jsp"  class="nav-link" style="color:white; font-size : 16px">고객센터</a></li>
         </c:if>    
      
      
      </ul>
      
      </div>
      </nav>
      </div>
   <div id="header3">
   

   
   <c:if test="${sessionScope.member.userId == 'admin'}">
         <div id= "header3-1"><img src="/images/login_icon.png" id="loginimg"></div>
      <div id= "header3-2"><span id="logintext" style="color:white;font-size:14px">${sessionScope.member.userNickName }님 환영합니다</span><br>
      <a href="/memberAll" class="btn" style="color:white;font-size:10px">관리자페이지</a>
    <a href="/logout" onclick="signOut();" class="btn" style="color:white;font-size:10px">로그아웃</a>   </div>
      
       </c:if>
       
   <c:if test="${sessionScope.member != null && sessionScope.member.userId != 'admin'}">
         <div id= "header3-1"><img src="/images/login_icon.png" id="loginimg"></div>
      <div id= "header3-2"><span id="logintext" style="color:white;font-size:14px">${sessionScope.member.userNickName }님 환영합니다</span><br>
      <a href="/myPage"><button class="btn" style="color:white;font-size:10px">마이페이지</button></a>
      <a href="/logout" onclick="clearAllCookies(domain, path)" class="btn" style="color:white;font-size:10px">로그아웃</a>   </div>
      </c:if> 
      
      
         
   <c:if test="${sessionScope.member == null }">
   
    <button type="button" class="btn" data-toggle="modal" data-target="#myModal" id="searchbtn" style="width:100px; color:white"><b>LOGIN</b></button>
    <a href="/views/member/EnrollPage.jsp" class="btn" id="searchbtn" style="width:100px; color:white"><b>JOIN</b></a>
 
      </c:if>    
      </div>
      
   </div>
      
   </nav>   
       <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
            <h1 class="modal-title">LOGIN</h1>
          <button type="button" class="close" data-dismiss="modal">&times;</button>

       
        </div>
        <div class="modal-body">
          <div class="form-group">
 
            <pre style="font-size : 22px">               ID</pre>
            <center><input type="text" class="form-control" id="userId" name="userId"></center>
            </div>
            <div class="form-group">
              <pre style="font-size : 22px">               PASSWORD</pre>
        <center><input type="password" class="form-control" id="userPwd" name="userPwd"></center>
  
         </div>
         <center><input type="button" class="btn btn-danger" value="로그인" id = "loginbtn"><br>
         
            <a href=/views/member/EnrollPage.jsp><button class="btn btn-danger" value="회원가입" id = "loginbtn">회원가입</button></a></center>
            
            <center> <a id="kakao-login-btn"></a>
            
              <div  class="g-signin2" data-onsuccess="onSignIn" style="width:300px;height:60px;"></div></center>
   
            <center><a href="/views/member/findId.jsp" class="btn">아이디 찾기</a><a href="/views/member/findPw.jsp" class="btn">비밀번호 찾기</a></center>
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

   
<script type='text/javascript'>

   
      
   $("#loginbtn").click(function(){
      var url = "${param.url }";
      var userId = $("#userId").val().trim();
      var userPwd = $("#userPwd").val().trim();
      $.ajax({
         
         url:"/login",
         type:"post",
         data:{url : url,userId : userId, userPwd : userPwd},
         success:function(data){
               if(data == "false"){
                  
                  alert("로그인 실패 : 아이디와 비밀번호를 확인하세요");
               }else{
                  
                  window.location.reload();
               }
               
            }
            
      })
      
      
   });


function onSignIn(googleUser) {
     var profile = googleUser.getBasicProfile();
    
     var id = profile.getId();
     var name = profile.getName();
      var email = profile.getEmail();
      var auth2 = gapi.auth2.getAuthInstance();
     
      auth2.disconnect();
      
      $.ajax({
         
        url:"/googleLogin",
         type:"post",
         data:{id : id, email : email, name : name},
         success:function(data){
               if(data == "success"){
                  window.location.reload();
                  
               }else{
                  window.location.href="/views/member/googleEnroll.jsp?id="+id+"&email="+email+"&name="+name;
               }
               
            }
        
     })
      

     
     // This is null if the 'email' scope is not present.
   }


/* function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
      console.log('User signed out.');
    });
    auth2.disconnect();
  } */

    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('0826bd103c5aa70c650709d1fc259e46');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
          Kakao.Auth.loginForm({
               success: function(res) {
                  Kakao.API.request({
                       url: '/v2/user/me',
                       success: function(res) {
                        var id = res.id;
                        var email = res.kakao_account.email;
                       $.ajax({
                          
                          url:"/kakaoTalkLogin",
                         type:"post",
                         data:{id : id, email : email},
                         success:function(data){
                               if(data == "success"){
                                  window.location.reload();
                                  
                               }else{
                                  window.location.href="views/member/kakaoEnroll.jsp?id="+id+"&email="+email;
                               }
                               
                            }
                          
                       })
                        
                     
                       },
                       fail: function(error) {
                         alert(JSON.stringify(error));
                       }
                  })
               }
                 /* alert(JSON.stringify(res));
                 var id = res.id;
                 var email = res.kakao_account.email;
                 var gender = res.kakao_account.gender; */
                 //window.location.href="/kakaoTalkLogin?id="+id+"&email="+email+"&gender="+gender;
               ,
               fail: function(err) {
                 alert(JSON.stringify(err));
               }
            })
               
        
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      }
    });
    
    
   

  
</script>
      

<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>