<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>RedLine</title>
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
   margin-top: 2200px;
   background: black;
   
}

#header1 {
   float: left;
   height: 100%;
   width: 25%;
   color: black;
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

#content2{
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

        /* ################### notice Content DIV #########################*/

        #content_notice {
        
            float: left;
            width: 75%;
            height: 80%;
            text-align: center;
           
            /* border: 1px solid blue; */
        }

        .notice_container {
            display: inline-block;
            width: 100%;
           
            height: auto;
            
            
        }

        /* boardInfo Start */
        .notice_info {

            float: left;
            width: 100%;
            height: auto;
            border-top : 2px solid crimson;
            border-bottom: 2px solid crimson;
            background-color: pink;
        }

        .articleWriter {
            float: left;
            width: 20%;
        }


        .articleDate {
            float: left;
            width: 60%;
        }

        .articleHit {
            float: left;
            width: 20%;
        }


        /* boardInfo End */



        /* boardMain Start */

        .articleMain {
            float: left;
            width: 100%;
         
        }


        .articleTitle {
        padding: 20px;
            float: left;
            width: 100%;
            height: auto;
            border-bottom: 1px solid crimson;
        }

        .articleContent {
            float: left;
            width: 100%;
            height: auto;
            text-align: left;
            padding: 20px;
        }

        /* boardMain End */


        /* boardFoot Start */

        .notice_foot {
            float: left;
            width: 100%;
            border-top: 2px solid crimson;
            
        }

        .btn_left {
            float: left;
            text-align: left;
            padding-top :10px;
            width: 50%
        }
        

        .btn_right {
            float: left;
            text-align: right;
            padding-top :10px;
            width: 50%
        }
        
        #btn_foot {
            width: auto;
            height: auto;
        }

        /* boardFoot End */


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
        
        #h2{
           margin-top : 30px;
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
                    <center><br>
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

    <div id="content2">   
         <!--##################### notice_Content ##########################-->
     <div id="content2-1">
             &nbsp; <br>

               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/images/login_icon.png" width="30px" height="30px">공지사항>공지사항 내용
               </h6>
               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;공지사항 내용</h1><hr>
     </div>

            <div id="content_notice" >
                <div class="notice_container">
                    <div class="notice_info">
                        <div class="articleWriter">작성자: ${noticeContent.userNickname }</div>
                        <div class="articleDate">작성일시 : ${noticeContent.makeDate }</div>
                        <div class="articleHit"> 조회수 : ${noticeContent.clickCount } </div>
                    </div>
                    <div class="articleMain">
                        <div class="articleTitle">
                            <span style="color:brown">
                                <h4>${noticeContent.title }</h4>
                            </span>
                        </div>
                        <div class="articleContent">
                        <c:if test="${noticeContent.photoOriginalFilename != null || noticeContent.photoRenamedFilename != null}">
                     <c:if test="${noticeContent.photoRenamedFilename == null }">
                     <img src="/upload/noticePhoto/${noticeContent.photoOriginalFilename}">
                  </c:if>
                        <c:if test="${noticeContent.photoRenamedFilename != null }">
                  <img src="/upload/noticePhoto/${noticeContent.photoRenamedFilename}">
                  </c:if>
                  </c:if>  
                           ${noticeContent.boardContent }
                        </div>
                        
                    </div>
                    <div class="notice_foot">
                        <div class="btn_left">
                        <c:if test="${sessionScope.member.userId eq 'admin'}">
                            <a href="/noticeModify.do?noticeNo=${noticeContent.boardNumber}"><button class="btn btn-danger" id="btn_foot" type="button">수정</button></a>
                            <a href="/noticeDelete.do?noticeNo=${noticeContent.boardNumber}"><button class="btn btn-danger" id="btn_foot" type="button" onclick="return delQuestion();">삭제</button></a>
                        </c:if>
                        </div>
                        <div class="btn_right">
                            <button class="btn btn-danger" id="btn_foot" type="button" onclick="location.href='/noticeList.do'">목록으로</button>
                        </div>
                    </div>

                </div>

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
      function delQuestion() {
         var check = window.confirm("정말로 삭제 하시겠습니까?");
         
         if(check) {
            return true;
         }else {
            return false;
         }
      }
   </script>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
       <!--  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>