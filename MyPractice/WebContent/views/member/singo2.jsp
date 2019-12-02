<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.ArrayList, singo.model.vo.Singo, singo.model.vo.PageData"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <style>
    
   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
   

div {
 /*   border: 1px solid black; */
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

      

  button[name=mybtn] {
   height: 100%;
   width: 100%;
   font-size: 25px;
   font-weight:bold;
   background:white;
   color:dimgrey;
   
}



        table {
            border: 1px solid #EAEAEA;
            text-align: center;
        }

        th {

            text-align: center;
            background-color: #EAEAEA;
        }

        td {
            height: 50px;
            width: 200px;
        }

        #updatebtn {
            float: right;
            margin-right: 120px;
        }

 
}
  #memberbtn{
  height: 100%;
   width: 100%;
   font-size: 25px;
   font-weight:bold;
   background:white;
   color:dimgrey;
    }

#singobtn{
   border: 0px;
   background: #c81a00;
   color:white;
   border-radius: 3px;
   cursor: pointer;
   text-align:center; 
   
}

#memberbtn:hover{
     box-shadow:200px 0 0 150px rgba(200,26,0,1) inset;
   } 
   .enrollBtn{

   border: 0px;
   background: #c81a00;
   color:white;
   /*border:1px solid #999999;*/
   border-radius: 3px;
   font-size:17px;
   width:120px;
   height:30px;
   cursor: pointer;
   text-align:center; 
   


}
#btn4{
       border: 0px;
   background: #caced2;
   color:white;
   border-radius: 3px;
   font-size:17px;
   width:120px;
   height:38px;
   cursor: pointer;
}
#btn5{
       border: 0px;
   background: #c81a00;
   color:white;
   border-radius: 3px;
   font-size:17px;
   width:120px;
   height:38px;
   cursor: pointer;
}
#singo2btn{
       border: 0px;
   background: #caced2;
   color:white;
   border-radius: 3px;
   font-size:12px;
   width:120px;
   height:38px;
   cursor: pointer;
}
#memberDel{
   color:white;
   font-size:14px;
   
}

    </style>


    <script>

    </script>

</head>

<body>


    <div id="container">
        <div id="header">
           <jsp:include page="/views/header/Header2.jsp"></jsp:include>
        </div>
        <div id="content">

            <div id="content1">

                <div id="content1-1">
                    <center><br>
                        <h1 style="color: dimgrey; font-weight: bold;">관리자 서비스</h1>
                    </center>
                </div>
                <div id="content1-2">
                    <div id="content1-2-1">
                        <a href="/memberAll"><button class="btn" name="mybtn" id="memberbtn">회원관리</button></a>
                    </div>
                    <div id="content1-2-2">

                        <a href="/singoList"><button class="btn" name="mybtn" id="singobtn">신고관리</button></a>
                    </div>
                    


                </div>
            </div>

            <div id="content2">
                <div id="content2-1"> &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png" style="width:30px; height:30px;">관리자서비스 > 신고관리
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;신고관리</h1>
               <hr>
                </div>
                <div id="content2-2">
                    <div id="content2-2-1"></div>
                    <div id="content2-2-2">


                        <center><br><br><br>
                            <table border="1">
                                <tr>
                                    <td colspan=16 align=center>
                                        <form action="/singoSearch" method="get">
                                        회원 검색 : <input type="text" name="search" placeholder="검색할 회원의 아이디를 입력해주세요." value="${search }"
                           style="width: 300px;"> &nbsp;
                        <input type="submit" value="검색" class="enrollBtn">
                                        </form>
                                    </td>
                                </tr>
                                   <tr>
                                      
                                    <th>신고자 ID</th>
                                    <th>신고대상자 ID</th>
                                    <th>신고 제목</th>
                                    <th>신고 날짜</th>
                                    <th>신고 종류</th>
                                    <th>회원 탈퇴</th>
                                    <th>처리상태</th>
                                    <th>처리</th>
                                    
                                </tr>

                                <c:forEach items="${pageData.pageList}" var="sl" varStatus="i">
                                    <tr>
                                   
                                        <td>
                                            <c:out value="${sl.reporterId}" />
                                        </td>
                                        <td>
                                            <c:out value="${sl.reportedId }" />
                                        </td>
                                          <td><a href="/singoShow?reportNo=${sl.reportNo}">
                                          <c:out value="${sl.title }" /></a>
                                        </td>
                                        <td>
                                            <c:out value="${sl.date}" />
                                        </td>
                                        <td>
                                            <c:out value="${sl.reportType}" />
                                        </td>
                                         <td><button id="singo2btn"><a href="/memberDelete?reportedId=${sl.reportedId }" id="memberDel" onclick="return delQuestion()">신고 대상자 탈퇴</a></button></td> 
                                          <td>
                                            <c:out value="${sl.reportSuccess}" />
                                        </td>
                                       <c:if test="${sl.reportSuccess == '접수'}">
                                        <td><button type = "button" name="success" display="block" id="btn4">처리<input type="hidden" value = "${sl.reportNo}" name = "num"></button></td> 
                                         </c:if>
                                         <c:if test="${sl.reportSuccess == '처리완료'}">
                                        <td><button id="btn5" align=center>완료</button> </c:if></td> 
                                         
                                    </tr>
                                </c:forEach>


                                <tr>
                                    <td colspan=16 align=center>${pageData.getPageNavi() }</td>
                                </tr>
                            </table>

                        </center>


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
      var result = window.confirm("정말로 회원을 탈퇴시키겠습니까?");
      
      if(result) {
         return true;
      }else{
         return false;
      }
      
   }
   
   
   
   
 
   
   
    $("button[name=success]").click(function(){
      
      var result = window.confirm("처리완료하시겠습니까 ?");
   
      if(result) {
         
               var num = $(this).children("input").val();
               var btn = $(this);
               console.log(num);
              $.ajax({
                 
                 url : "/updateReport",
                 type : "post",
                 data : {num : num},
                 success : function(data){
                    
                    if(data == "false"){
                       alert("처리를 실패했습니다");
                    }else{
                       
                       alert("처리를 완료했습니다");
                       btn.attr("display","none");
                       window.location.reload();
                    }
                    
                    
                 }
              
              
              
              })
              
         
         
         }else{
            return false;
         }
            
   
   
   }) 
   
   
   
   </script>
    
    
    </body>
</html>