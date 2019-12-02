<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<script src="../../js/jquery-2.0.0.js"></script>
<title>혈액지식</title>
<style>
   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
div {
/*    border: 1px solid black; */
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
   height: 15%;
   width: 100%;
}

/* notice_table_style */
#contenet_board {
   float: left;
   height: 100%;
   width: 75%;
   display: block;
   padding: 20px;
}

#t1 {
   width: 20%;
}

#t2 {
   width: 20%;
}

#t3 {
   width: 20%;
}

#t4 {
   width: 20%;
}

#t5 {
   width: 20%;
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

.btn1 {
         
         font-size: 25px;
         font-weight:bold;
         background:white;
         color:gray;
}

.btn2 {
         
         font-size: 25px;
         font-weight:bold;
         background:white;
         color:gray;
}
        
.btn3{
        
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



table {
   border: 1px solid #EAEAEA;
}

th {
   width: 90px;
   text-align: center;
   background-color: #EAEAEA;
}

td {
   height: 50px;
   width: 500px;
}

a:link {
   color: red;
   text-decoration: none;
}

a:visited {
   color: black;
   text-decoration: none;
}
</style>
</head>
<body>
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
                  <h1 style="color: dimgrey; font-weight: bold;">후원회원 전체정보</h1>
               </center>
            </div>
            <div id="content1-2">
               <div id="content1-2-1">

                  <a href="/views/payment/payment.jsp"><button class="btn1" name="mybtn"
                         value="info1">후원 켐패인 참여하기</button></a>
               </div>
               <div id="content1-2-2">
               <c:if test="${sessionScope.member.userId != null }">
                  <a href="/donationMy.do"><button class="btn2" name="mybtn"
                         value="info2">나의 후원정보</button></a>
               </c:if>
               </div>
               
               <div id="content1-2-3">
               <c:if test="${sessionScope.member.userId eq 'admin'}">
                  <a href="/doantionAll.do"><button class="btn3" name="mybtn"
                         value="info3">후원회원 전체정보</button></a>
               </c:if>

               </div>
               

            

            </div>
         </div>

         <!--##################### donationAll ##########################-->
         <div id="content2">
         
            
            <div id="content2-1">
             &nbsp; <br>

               <h6 style="color: gray">

                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/images/login_icon.png" width="30px" height="30px">후원캠페인>나의 후원정보

               </h6>

 

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;후원회원 전체정보</h1><hr>


     </div>
            <h4>총 ("${donationCount}") 건이 검색되었습니다.</h4>
               <table style="width:90%; margin:0 auto;">
                  <thead>
                     <tr class="table-danger">
                        <th id="t1">회원Id</th>
                        <th id="t2">회원닉네임</th>
                        <th id="t3">결제방법</th>
                        <th id="t4">기부금액</th>
                        <th id="t5">기부일</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${dList}" var="dList">
                        <tr>
                           <td><c:out value="${dList.donationId}" /></td>
                           <td><c:out value="${dList.donationNickname}" /></td>
                           <td><c:out value="${dList.donationPg}" /></td>
                           <td><c:out value="${dList.donationPay}원"/></td>
                           <td><c:out value="${dList.donationDay}" /></td>
                           
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>

            </div>
         </div>
         
         
      <!--    <script>
          $(document).ready(function() {
                  $("#searchBtn").click(function() {
                     var searchType = $("#searchType").val();
                         if(searchType=="st1"){
                            $(location).attr('href', '/noticeSearch.do')
                         }else if(searchType=="st2")
                            alert("내용");
                      });
                  });
         </script> -->
         
         <!-- Optional JavaScript -->
         <!-- jQuery first, then Popper.js, then Bootstrap JS -->
     <!--     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script> -->
         <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
         <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
</body>
</html>