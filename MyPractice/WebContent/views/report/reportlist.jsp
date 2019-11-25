<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.util.ArrayList, singo.model.vo.Singo, singo.model.vo.PageData"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <style>
        div {
           
            box-sizing: border-box;
            
        }

        #container {

             
      height: 1300px;
      width: 2400px;



        }

        #header {
            height: 7%;
            width: 100%;

        }

        #content {
            height: 80%;
            width: 100%;

        }

        #footer {
            height: 5%;
            width: 100%;


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
            width: 25%;

        }

        #content2 {
            float: left;
            height: 100%;
            width: 75%;

        }

        #content1-1 {
            float: left;
            height: 15%;
            width: 100%;
        }

        #content1-2 {
            float: left;
            height: 85%;
            width: 100%;


        }

        #content1-2-1 {
            float: left;
            height: 10%;
            width: 100%;

        }

        #content1-2-2 {
            float: left;
            height: 10%;
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
            height: 15%
        }

        #content2-2 {
            float: left;
            width: 100%;
            height: 85%;

        }

        #content2-2-1 {
            float: left;
            height: 100%;
            width: 15%;
        }

        #content2-2-2 {
            float: left;
            height: 100%;
            width: 100%;
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
            text-align: center;
        }

        th {

            text-align: center;
            background-color: #EAEAEA;
        }

        td {
            height: 50px;
            width: 500px;
        }

        #updatebtn {
            float: right;
            margin-right: 120px;
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
                        <h1>고객센터</h1>
                    </center>
                </div>
                <div id="content1-2">
                   <div id="content1-2-1" >

                  <a href="/views/report/report.jsp"><button class="btn" name="mybtn" >신고접수</button></a>
               </div>

				 <div id="content1-2-2" >

                  <a href="/reportList"><button class="btn btn-danger" name="mybtn" >신고접수확인</button></a>
               </div>


                </div>
            </div>

            <div id="content2">
                <div id="content2-1">&nbsp;
                    <br>
                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;신고접수 목록</h2>
                    <hr>
                </div>
                <div id="content2-2">
                    
                    <div id="content2-2-2">


                        <center>
                            <table border="1">
                                
                                   <tr>
                                      
                                    <th>신고자 ID</th>
                                    <th>신고대상자 ID</th>
                                    <th>신고 제목</th>
                                    <th>신고 날짜</th>
                                    <th>신고 종류</th>
                                  	<th>접수 상태</th>
                                    
                                </tr>

                                <c:forEach items="${pageData.pageList}" var="sl" varStatus="i">
                                    <tr>
                                   
                                        <td>
                                            <c:out value="${sl.reporterId}" />
                                        </td>
                                        <td>
                                            <c:out value="${sl.reportedId }" />
                                        </td>
                                          <td><a href="/singoShow?reportNo=${sl.reportNo }">
                                          <c:out value="${sl.title }" /></a>
                                        </td>
                                        <td>
                                            <c:out value="${sl.date}" />
                                        </td>
                                        <td>
                                            <c:out value="${sl.reportType}" />
                                        </td>
                                         <td>${sl.reportSuccess }</td> 
                                       
                                         
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
        <div id="footer">
            <center>
                <h6 style="color: darkgray">Copyright KH Corp.All rights reserved</h6>
            </center>
        </div>

    </div>
    
  
    
    </body>
</html>