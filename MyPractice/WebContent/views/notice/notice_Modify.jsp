<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">


<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">


<title>Blood_Info</title>
<!-- ckeditor -->
<script type="text/javascript" src="../../ckeditor/ckeditor.js"></script>



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
   height: 10%;
   width: 100%;
}

#content1-2-4 {
   float: left;
   height: 10%;
   width: 100%;
}




/* ################### BoardAB Content DIV #########################*/
#content_boardAB {
   float: left;
   width: 75%;
   height: 100%;
   text-align: center;
   /* border: 1px solid blue;*/
}

.boardAB_write {
   display: inline-block;
   width: 80%;
   height: auto;
   /*border: 1px solid red;*/
}

.write_head {
   float: left;
   width: 100%;
   height: 50px;
   border-top: 2px solid crimson;
   border-bottom: 2px solid crimson;
   background-color: pink;
   text-align: left;
   padding: 10px;
}

#titleText {
   width: 400px;
}

.wirte_info1 {
   float: left;
   width: 100%;
   height: auto;
}

.info_left {
   float: left;
   width: 50%;
   height: auto;
   text-align: left;
}

.info_right {
   float: left;
   width: 50%;
   height: auto;
   text-align: right;
}

.write_main {
   float: left;
   width: 100%;
   height: 500px;
   border-top: 2px solid crimson;
}

.write_info2 {
   float: left;
   width: 100%;
   height: auto;
   border-top: 2px solid crimson;
   padding: 20px;
}

.info_text {
   float: left;
   width: 80%;
   height: auto;
   border-top: 2px solid crimson;
   border: 1px solid gray;
   text-align: left;
   padding: 10px;
}

.imgbtn{
   float: left;
   width: 20%;
   height: auto;
   text-align: right;
   
}

.write_foot {
   float: left;
   width: 100%;
   height: auto;
   border-top: 2px solid crimson;
   padding-top: 10px;
}

.btn_left {
   float: left;
   width: 50%;
   height: 30px;
   text-align: left;
}

.btn_right {
   float: left;
   width: 50%;
   height: auto;
   text-align: right;
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
button[name=mybtn] {
   height: 100%;
   width: 100%;
   font-size: 20px;
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
              

            

            </div>
         </div>

         <!--##################### BoardAB ##########################-->

    
         <div id="content2">
         <div id="content2-1">
             &nbsp; <br>

               <h6 style="color: gray">

                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/images/login_icon.png" width="30px" height="30px">공지사항>공지사항 수정

               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;공지사항 수정</h1><hr>

     </div>
         <form action="/noticeModifyUpdate.do" method = "post" enctype = "multipart/form-data">
            <div class="boardAB_write">
               <div class="write_head">
                  제목 : <input type="text" id="titleText" name="title" value="${modifyContent.title}"> 
               </div>
               <div class="write_info1">
                  <div class="info_left">공지사항 게시판에 작성됩니다.</div>
                  <div class="info_right">
                  <input type="hidden" name="boardNo" value="${modifyContent.boardNumber}">
                  <input type = "hidden" name = "userId" value ="${sessionScope.member.userId}">
                  작성자 : <input type = "text" name = "writer" value ="${sessionScope.member.userNickName}" readonly></div>
               </div>
               <div class="write_main">
                  <textarea class="form-control" id="p_content" name="p_content">
                    ${modifyContent.boardContent }
                  </textarea>
                  <script type="text/javascript">
                     
                     CKEDITOR.replace('p_content', {
                        height : 450
                     });
                  </script>
               </div>
               <div class="write_info2">
                  <div class="info_text"><span style="color:crimson">* 통신환경에 따라 고용량의 이미지의 업로드가 실패할 수 있습니다.</span>
               
                   <img id ="img-viewer" width = "350">
                  </div>
                  <div class="imgbtn"><input type = "file" name = "upfile" onchange = "fn_loadImg(this)"></div>
               </div>
               <div class="write_foot">
                  <div class="btn_left"></div> 
                  <div class="btn_right">
                     <input class="btn btn-danger" type="submit" value="수정완료">
                     <a class="btn btn-danger" href="/noticeList.do">취소</a>
                  </div>
               </div>
            </div>
            </form>
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
   function fn_loadImg(f) {
      //console.log(f.files); // fileList
      //console.log(f.files[0]) // File
      
      if (f.files && f.files[0]) {
         var reader = new FileReader();
         // 파일읽기 메소드
         reader.readAsDataURL(f.files[0]);
         // 읽기 완료시 onload 이벤트 발생
         reader.onload = function(e) {
            $("#img-viewer").attr("src",e.target.result); 
            // FileReader 객체의 result에는 파일의 컨텐츠가 담겨있음
         }
      }
   }
   </script>

   <!-- Optional JavaScript -->
   <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
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