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
   height: 10%;
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

/* notice_table_style */
#content_board {
   float: left;
   height: 100%;
   width: 75%;
   display: block;
   padding: 20px;
}

#t1 {
   width: 10%;
}

#t2 {
   width: 45%;
}

#t3 {
   width: 20%;
}

#t4 {
   width: 15%;
}

#t5 {
   width: 10%;
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
   font-size: 20px;
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
                  <h1 style="color: dimgrey; font-weight: bold;">공지사항</h1>
               </center>
            </div>
            <div id="content1-2">
               <!--  <div id="content1-2-1">

                        <a href="#"><button class="btn" name="mybtn" >Rh- A형 게시판</button></a>
                    </div>
                    <div id="content1-2-2">

                        <a href="#"><button class="btn" name="mybtn">Rh- B형 게시판</button></a>
                    </div>
                    <div id="content1-2-3">

                        <a href="#"><button class="btn" name="mybtn">Rh- O형 게시판</button></a>


                    </div>
                    <div id="content1-2-4">

                        <a href="#"><button class="btn" name="mybtn" >Rh- AB형 게시판</button></a>
                    </div>
 -->


            </div>
         </div>
      
         <!--##################### BoardAB_List ##########################-->
         <div id="content2">
          <div id="content2-1">
             &nbsp; <br>

               <h6 style="color: gray">


               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;공지사항</h1><hr>

     </div>
            <div id="notice">
               <table style="margin:0 auto; width:90%;">
                  <thead>

                     <tr>
                        <td colspan="3" align="left">
                           
                           <form action="/noticeSearch.do" method="post">
                              <select name="searchType" id="searchType">
                                 <option value="st1">제목</option>
                                
                              </select> 
                              <input type="text" name="search" id="searchText">
                              <input type="submit" class="btn btn-danger" value="검색">
                           </form>
                        </td>
                        <td colspan="2" align="right">
                        <c:if test="${sessionScope.member.userId eq 'admin'}">
                           <form action="/views/notice/notice_Write.jsp" method="post">
                              <input type="submit" class="btn btn-danger" value="관리자 공지등록">
                           </form>
                        </c:if>
                        </td>
                     </tr>
                     <tr class="table-danger">
                        <th id="t1">번호</th>
                        <th id="t2">제목</th>
                        <th id="t3">작성자</th>
                        <th id="t4">작성일시</th>
                        <th id="t5">조회수</th>
                     </tr>
                  </thead>
                  <tbody>
                     <c:forEach items="${nPageData}" var="notice">
                        <tr>
                           <td><c:out value="${notice.dNum}" /></td>
                           <td><a
                              href="/noticeContent.do?boardNumber=${notice.boardNumber }"><c:out
                                    value="${notice.title}" /></a></td>
                           <td><c:out value="${notice.userNickname}" /></td>
                           <td><c:out value="${notice.makeDate}" /></td>
                           <td><c:out value="${notice.clickCount}" /></td>
                           
                        </tr>
                     </c:forEach>
                  </tbody>
                  <tfoot>
                     <tr>
                        <td colspan=5 align=center>${nPageNavi }</td>
                     </tr>

                  </tfoot>
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
        <!--  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
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