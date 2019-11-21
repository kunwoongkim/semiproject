<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member, java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
   		
	<title>Insert title here</title>
	 <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="../../js/jquery-2.0.0.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">  
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <meta name = "google-signin-client_id"content = "181826323862-29136l7je3lvb232vlm92q7a785hsq5n.apps.googleusercontent.com">
	
<style>
body{
		margin-left : 100px;
	
	}
	div{
	
		box-sizing: border-box;
	}
	#container{
		
		
		height: 1000px;
		width: 2100px;
		
		
	}
	#header{
		height: 30%;
		width: 100%;
		
	}
	
	#header1{
		float: left;
		height: 100%;
		width: 20%;
	}
	
	#header2{
		float: left;
		height: 100%;
		width: 60%;
		
	}
	#header3{
		float: left;
		height: 100%;
		width: 20%;
	}
	
	#title{
		
		font-size: 80px;
		
	}
	
	#content{
			float: left;
		width: 100%;
		height: 70%;
	}
	#content1{
			float: left;
		width: 20%;
		height: 100%;
	}
	#content2{
			float: left;
		width: 60%;
		height: 100%;
	}
	#content3{
		width: 20%;
		height: 100%;
	}
	#usr{
		width: 300px;
		height: 30px;
	}
	#pwd{
		width: 300px;
		height: 30px;
	}
	#loginbtn{
		width: 300px;
		height: 40px;
	}
	 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}



	
	</style>

</head>

<body>
	<div id = "container">
	<div id = "header">
		<div id = "header1"></div>
		<div id = "header2"><center><br><br><br><br><br><br><br><br><a href="/index.jsp"><span id="title">REDLINE</span></a></center></div>
		<div id = "header3"></div>
		</div>
	<div id = "content">
		<div id = "content1"></div>
		
		<div id = "content2">
			<form action="/login" method="post">
			<div class="form-group">
 
				<br><center>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="text" class="form-control" id="usr" name="userId"></center>
				</div>
				<div class="form-group">
  <center>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  		<input type="password" class="form-control" id="pwd" name="userPwd"></center>
  
</div>
			<center><input type="submit" class="btn btn-danger" value="로그인" id = "loginbtn"></center>
				</form><br>
				<center><a href=/views/member/EnrollPage.jsp><button class="btn btn-danger" value="회원가입" id = "loginbtn">회원가입</button></a></center>
				<center> <a id="kakao-login-btn"></a>
  				<div  class="g-signin2" data-onsuccess="onSignIn" style="width:220px;height:45px;"></div>
	
				<center><a href="/views/member/findId.jsp" class="btn">아이디 찾기</a><a href="/views/member/findPw.jsp" class="btn">비밀번호 찾기</a></center>
				</div>
				
				
		<div id = "content3"></div>
		
		</div>
	<div id = "footer">
		
		</div>
	
	
			</div>
		
		








<script type='text/javascript'>


function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();
	 
	  var id = profile.getId();
	  var name = profile.getName();
      var email = profile.getEmail();
      var auth2 = gapi.auth2.getAuthInstance();
      alert(JSON.stringify(profile));
      auth2.disconnect();
     window.location.href="/googleLogin?id="+id+"&email="+email+"&name="+name; 
	  
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
                        var gender = res.kakao_account.gender; 
                        window.location.href="/kakaoTalkLogin?id="+id+"&email="+email+"&gender="+gender;
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
	

	
	
	
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body></html>