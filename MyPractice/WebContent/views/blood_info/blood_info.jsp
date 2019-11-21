<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>혈액지식</title>
<style>
        div {
            box-sizing: border-box;
           /* border: 1px solid black;*/
        }

        #container {

            height: 1000px;
            width: 1600px;



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

        #content1-2-5 {
            float: left;
            height: 10%;
            width: 100%;

        }

        #content1-2-6 {
            float: left;
            height: 10%;
            width: 100%;

        }

        /* ################### 혈액정보 DIV #########################*/

        /* 혈액의 필요성*/
        #info1 {
            float: left;
            height: 100%;
            width: 75%;
            display: block;
            padding: 20px;
        }

        #info1_img {
            float: left;
            width: 170px;
            height: 100px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/need_img.gif);
            background-repeat: no-repeat;
        }

        #info1-1 {
            float: left;
            padding: 20px;
            width: 70%;

        }


        /*혈액이란*/
        #info2 {
            float: left;
            height: 100%;
            width: 75%;
            display: none;
            padding: 20px;
        }

        #info2-1 {
            float: left;
            padding: 20px;
            width: 100%;
        }

        #info2_img1 {
            float: left;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img01.gif);
            background-repeat: no-repeat;
        }

        #info2-2 {
            float: left;
            padding: 20px;
            width: 70%;
        }

        #info2-3_title {
            float: left;
            width: 100%;
            height: 60px;
        }

        #info2_img2 {
            float: left;
            width: 20%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img02.gif);
            background-repeat: no-repeat;
        }



        #info2-3 {
            float: left;
            padding: 20px;
            width: 70%;
            height: auto;
        }

        #info2_img3 {
            float: left;
            width: 100%;
            height: 300px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img03.gif);
            background-repeat: no-repeat;
        }

        #info2-4 {
            float: left;
            width: 100%;

        }

        #info2_img4 {
            float: left;
            width: 100%;
            height: 100px;

            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img04.gif);
            background-repeat: no-repeat;
        }

        #info2-4_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 40px;
        }

        #info2_img5 {
            float: left;
            width: 10%;
            height: 100px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img05.gif);
            background-repeat: no-repeat;
        }

        #info2-4 {
            float: left;
            padding: 20px;
            width: 80%;
            height: 100px;
        }

        #info2-5 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 120px;
        }

        #info2_img6 {
            float: left;
            width: 100%;
            height: 210px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img06.gif);
            background-repeat: no-repeat;
        }

        #info2-6_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 50px;
        }

        #info2_img7 {
            float: left;
            width: 15%;
            height: 100px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img07.gif);
            background-repeat: no-repeat;
        }

        #info2-6 {
            float: left;
            padding: 20px;
            width: 80%;
            height: 100px;
        }

        #info2-7_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 70px;
        }

        #info2-7 {
            float: left;
            padding: 20px;
            width: 100%;

        }

        #info2-8_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 40px;
        }

        #info2_img8 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 100px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_definition_img08.gif);
            background-repeat: no-repeat;
        }

        #info2-8 {
            float: left;
            width: 80%;
            height: 100px;
        }


        #info2-9 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 600px;
        }



        /*혈액종류*/

        #info3 {
            float: left;
            height: 100%;
            width: 75%;
            display: none;
            padding: 20px;
        }

        #info3-1 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 60px;
        }

        .info3_total_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 70px;
        }

        .info3_total_content {
            float: left;
            width: 80%;
            height: 200px;
        }

        #info3_img1 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img01.gif);
            background-repeat: no-repeat;
        }

        #info3_img2 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img02.gif);
            background-repeat: no-repeat;
        }

        #info3_img3 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img03.gif);
            background-repeat: no-repeat;
        }

        #info3_img4 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img04.gif);
            background-repeat: no-repeat;
        }

        #info3_img5 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img05.gif);
            background-repeat: no-repeat;
        }

        #info3_img6 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img07.gif);
            background-repeat: no-repeat;
        }

        #info3_img7 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodproc_type_img06.gif);
            background-repeat: no-repeat;
        }




        /*혈액형 종류*/

        #info4 {
            float: left;
            height: 100%;
            width: 75%;
            display: none;
            padding: 20px;
        }

        #info4-1_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 50px;
        }

        #info4_img1 {
            float: left;
            padding: 20px;
            width: 15%;
            height: 200px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_bloodtype_img01.gif);
            background-repeat: no-repeat;
        }

        #info4-1 {
            float: left;
            width: 80%;
            height: 150px;
            padding: 20px;
        }

        #info4-2_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 70px;
        }


        #info4-2-1 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 170px;
        }

        #info4_img2 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 200px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_bloodtype_img02.gif);
            background-repeat: no-repeat;
        }

        #info4-2-2 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 150px;
        }

        #info4_img3 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 200px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/bloodknowledge_bloodtype_img03.gif);
            background-repeat: no-repeat;
        }

        #info4_img4 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 800px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/info4_table.PNG);
            background-repeat: no-repeat;
        }

        #info4-3-1 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 500px;
        }

        #info4-3-2 {
            float: left;
            padding: 20px;
            margin-left: 40px;
            width: 100%;
            height: 350px;
        }

        #info4-3-3 {
            float: left;
            padding: 20px;
            width: 100%;
            height: 1500px;
        }


        /*헌혈에 대한 오해와 진실*/

        #info5 {
            float: left;
            height: 100%;
            width: 75%;
            display: none;
            padding: 20px;
        }

        /* 질문에 펼치는 형식의 내용 */

        .panel-body {
            padding: 20px;
        }



        /*수혈상식*/
        #info6 {
            float: left;
            height: 100%;
            width: 75%;
            display: none;
            padding: 20px;
        }

        #info6-1 {
            float: left;
            padding: 20px;
            margin-left: 40px;
            width: 100%;
            height: 60px;
        }

        #info6-2 {
            float: left;
            padding: 20px;
            margin-left: 20px;
            width: 100%;
            height: 300px;
        }

        #info6-3_title {
            float: left;
            padding: 20px;
            width: 100%;
            height: 70px;
        }

        #info6_img1 {
            float: left;
            padding: 40px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/transfusion_knowledge_img01.gif);
            background-repeat: no-repeat;
        }

        #info6-3-1 {
            float: left;
            width: 80%;
            height: 150px;
        }

        #info6_img2 {
            float: left;
            padding: 40px;
            width: 15%;
            height: 150px;
            /*border: 1px solid black;*/
            background-image: url(../../info_images/transfusion_knowledge_img02.gif);
            background-repeat: no-repeat;
        }

        #info6-3-2 {
            float: left;
            width: 80%;
            height: 150px;
        }

        #info6-4 {
            float: left;
            padding: 20px;
            margin-left: 20px;
            width: 100%;
            height: 1500px;
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
            <div id="header1">
                <center><a href="/index.jsp">
                        <h1 id="title">RED LINE</h1>
                    </a></center>
            </div>
            <div id="header2">
                <nav class="navbar navbar-expand-sm" id="nav">
                    <div class="navbar navbar-default navbar-right" id="navdiv">
                        <ul class="nav navbar-nav navbar-right" align=right>

                            <li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" style="color:black">커뮤니티</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">A형 게시판</a>
                                    <a class="dropdown-item" href="#">B형 게시판</a>
                                    <a class="dropdown-item" href="#">O형 게시판</a>
                                    <a class="dropdown-item" href="#">AB형 게시판</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;혈액지식</a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#"><button class="btn" onclick="showDiv(this.value)" value="info1">헌혈의 필요성</button></a>
                                    <a class="dropdown-item" href="#"><button class="btn" onclick="showDiv(this.value)" value="info2">혈액이란</button></a>
                                    <a class="dropdown-item" href="#"><button class="btn" onclick="showDiv(this.value)" value="info3">혈액종류</button></a>
                                    <a class="dropdown-item" href="#"><button class="btn" onclick="showDiv(this.value)" value="info4">혈액형종류</button></a>
                                    <a class="dropdown-item" href="#"><button class="btn" onclick="showDiv(this.value)" value="info5">헌혈에 대한 오해와 진실</button></a>
                                    <a class="dropdown-item" href="#"><button class="btn" onclick="showDiv(this.value)" value="info6">수혈 상식</button></a>
                                </div>
                            </li>
                            <li><a href="#" class="nav-link" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;헌혈의집찾기</a></li>
                            <li><a href="#" class="nav-link" style="color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;헌혈증기증</a></li>


                        </ul>

                    </div>
                </nav>
            </div>
            <div id="header3">
                <div id="header3-1"><img src="../../images/login_icon.png" id="loginimg"></div>
                <div id="header3-2"><span id="logintext">관리자님 환영합니다</span><br>

                    <center><a href="/logout"><button class="btn">로그아웃</button></a></center>

                </div>
            </div>
        </div>
        <div id="content">

            <div id="content1">

                <div id="content1-1">
                    <center><br>
                        <h1>헌혈지식</h1>
                    </center>
                </div>
                <div id="content1-2">
                    <div id="content1-2-1">

                        <a href="#"><button class="btn" name="mybtn" onclick="showDiv(this.value)" value="info1">헌혈의 필요성</button></a>
                    </div>
                    <div id="content1-2-2">

                        <a href="#"><button class="btn" name="mybtn" onclick="showDiv(this.value)" value="info2">혈액이란?</button></a>
                    </div>
                    <div id="content1-2-3">

                        <a href="#"><button class="btn" name="mybtn" onclick="showDiv(this.value)" value="info3">혈액 종류</button></a>


                    </div>
                    <div id="content1-2-4">

                        <a href="#"><button class="btn" name="mybtn" onclick="showDiv(this.value)" value="info4">혈액형 종류</button></a>
                    </div>

                    <div id="content1-2-5">

                        <a href="#"><button class="btn" name="mybtn" onclick="showDiv(this.value)" value="info5">헌혈에 대한 오해와 진실</button></a>
                    </div>

                    <div id="content1-2-6">

                        <a href="#"><button class="btn" name="mybtn" onclick="showDiv(this.value)" value="info6">수혈상식</button></a>
                    </div>

                </div>
            </div>

            <!--##################### infoDiv ##########################-->

            <div id="info1" class="infoDiv">
                <h2>헌혈의 필요성</h2><br>
                <h5>헌혈이란?</h5>
                <hr align="left" style="border: solid 1px red; width: 5%;">
                <div id="info1_img"></div>
                <div id="info1-1">
                    혈액의 성분 중 한 가지 이상이 부족하여 건강과 생명을 위협받는 다른 사람을 위해, 건강한 사람이 자유의사에 따라 아무 대가 없이 자신의 혈액을 기증하는 사랑의 실천이자, 생명을 나누는 고귀한 행동입니다.
                </div>
                <br><br><br><br><br><br>
                <div id="info1-2">
                    <h5>헌혈의 필요성</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                    <div id="info1-2-1">
                        <pre>
- 헌혈은 수혈이 필요한 환자의 생명을 구하는 유일한 수단입니다. 혈액은 아직 인공적으로 만들 수 있거나, 대체할 물질이 존재하지 않습니다.

- 생명을 사고 팔 수 없다는 인류 공통의 윤리에 기반하여, 세계 각국은 혈액의 상업적 유통을 법으로 규제하고 있습니다.

- 헌혈한 혈액은 장기간 보관이 불가능합니다.(농축적혈구 35일, 혈소판 5일) 따라서 적정 혈액보유량인 5일분을 유지하기 위해 헌혈자분들의 지속적이고
  꾸준한 헌혈이 필요합니다.

- 우리나라는 수혈용혈액의 경우 자급자족하고 있지만, 의약품의 원재료가 되는 혈장성분의 경우 외국으로부터 수입을 하고 있습니다.

- 외국으로부터 수입하지 않고 혈액을 자급자족하기 위해서는 연간 약 300만명의 헌혈자가 헌혈에 참여해야 합니다.

- 우리는 언제 수혈을 받을 상황에 처할지 모릅니다. 건강할 때 헌혈하는 것은 자신과 사랑하는 가족을 위하여, 더 나아가 모두를 위한 사랑의 실천입니다.
                    </pre>
                    </div>
                </div>
            </div>
            <div id="info2" class="infoDiv">
                <h2>혈액이란</h2><br>
                <h5>혈액은?</h5>
                <hr align="left" style="border: solid 1px red; width: 5%;">
                <div id="info2-1" style="border: 1px solid gray; width: 70%;">뼈속의 <span style="color:crimson; font-weight:bold; background-color:pink">골수에서 생성.</span> 우리 몸 속에 <span style="color:crimson; font-weight:bold; background-color:pink">4~6리터의 혈액보유</span>
                </div><br><br><br><br>

                <h5>혈액의 역할</h5>
                <hr align="left" style="border: solid 1px red; width: 5%;">
                <div id="info2_img1"></div>
                <div id="info2-2">
                    <pre>
* 심장박동으로 동맥. 모세혈관, 정맥순환
* 산소와 영양분 노폐물을 운반
* 백혈구와 항체 등을 통해 세균 감염 등의 질병으로부터 보호
* 혈구와 혈장 성분으로 구성
* 혈구와 골수의 조혈모 세포로부터 적혈구, 백혈구, 혈소판으로 분화되어 생성
* 혈장은 대부분 수분으로 구성되어 있으며, 단백 성분, 화학물질 및 전해질 등이 함유되어 있음
               </pre>
                </div>

                <div id="info2-3_title">
                    <h5>혈액의 구성</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info2_img2"></div>
                <div id="info2-3">
                    <pre>
* 직경 약 7마이크로미터, 400~500만개/혈액 1마이크로리터
* 산소운반
* 적혈구 한 개당 3백만개 정도의 헤모글로빈 가짐
* 산소와 결합된 헤모글로빈은 옥시헤모글로빈(Oxyhemoglobin)이라고 하며 밝은 붉은 색을 띰
* 이산화탄소와 결합하면 카복시헤모글로빈(Caboxyhemoglobin)로 변하고 검붉은 색 나타냄
               </pre>
                </div>
                <div id="info2_img3"></div>
                <div id="info2-3">
                    <pre>
<b>백혈구(White Blood Cells)</b>

혈액 1마이크로리터에 4,000~10,000개의 백혈구 있음
외부에서 박테리아, 바이러스 등이 침입하면 백혈구 수를 증가시키고 침입자를 제거
백혈구 중 2/3정도는 세포 안에 아주 작은 알갱이(granule)들을 가지고 있는 과립구(granulocyte)
과립구는 호중구(neutrophil), 호염구(basophil,) 호산구(eosinophil)등이 있음
단구(monocyte) 또는 대식세포(macrophage)는 침입자를 세포 안에서 처리한 후 우리 몸의 면역시스템에 그 
정보를 제공하여 이후 침입 시 신속한 대처 가능
림프구(lymphocyte)는 특정항원을 만나 활성화되고 증식되어 그 항원을 가진 세균 또는 세포들을 제거   
                    </pre>
                </div>
                <div id="info2_img4"></div>
                <div id="info2-4_title">
                    <h6>혈소판(platelets)</h6>
                </div>
                <div id="info2_img5"></div>
                <div id="info2-4">
                    <pre>

* 혈액 1마이크로리터에 15~40만개

* 상처가 났을 때 손상된 혈관벽에 붙고(adhesion) 또 혈소판끼리 서로 엉겨 붙으며(aggregation) 혈액응고를 일으켜 피를 멎게 함
               </pre>
                </div>

                <div id="info2-5">
                    <pre>
<span style="color:orange; font-weight:bold">혈액응고</span>

상처 부위에 혈소판과 혈액 응고인자들이 서로 도우며 혈액응고를 일으켜 피를 멎게 함
혈장 속에 함유되어 있는 혈액응고인자는 제1혈액응고인자부터 제13혈액응고인자까지 많은 종류의 인자들이 순차적으로 작용하여 혈액응고 일으킴
                </pre>
                </div>
                <div id="info2_img6"></div>

                <div id="info2-6_title">
                    <h6>혈장(plasma)</h6>
                </div>
                <div id="info2_img7"></div>
                <div id="info2-6">
                    <pre>
* 혈액의 반 이상 차지

* 생명 유지에 꼭 필요한 전해질, 영양분, 비타민, 호르몬, 효소 그리고 항체 및 혈액응고 인자 등 중요한 단백 성분이 들어있음
               </pre>
                </div>

                <div id="info2-7_title">
                    <h5>혈액 질환</h6>
                        <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info2-7">
                    <pre>
<b>빈혈</b>

적혈구가 모자라는 상태
적혈구가 부족하면 산소공급이 원활하지 못하여 쉽게 숨이차고 심장이 빨리 뛰게 되고 기운이 없어짐
철결핍성 빈혈 : 헤모글로빈 생성시 필수적인 철이 부족하여 생김, 철분제제 공급하여 치료
백혈병 재생불량성 빈혈 : 골수에 병이 생겨 발생, 항암제 치료 또는 골수이식
자가면역성 용혈성 빈혈 : 자가항체에 의해 일찍 제거되어 발생, 자가 항체가 감소되도록 치료
                </pre>
                </div>
                <div id="info2-8_title">
                    <b>혈우병(Hemophilla)</b>
                </div>
                <div id="info2_img8"></div>
                <div id="info2-8">
                    <pre>
* 엄마나 아빠 염색체에 있는 x 염색체가 자식 염색체로 유전
* 혈우병A는 제8응고인자가, 그리고 혈우병B 는 제9혈액응고인자가 유전적으로 결핍되어 생김
* 혈우병 유발 유전자는 X염색체에 존재하며 열성으로 유전
           </pre>
                </div>
                <div id="info2-9">
                    <pre>
<b>혈소판 감소증(Thrombocytopenia)</b>

골수에서 혈소판을 못 만들거나 만들어진 혈소판이 어떤 원인에 의해 소모 또는 파괴 될 때 발생
자가면역성 혈소판 감소성 자반증 등 : 혈소판이 항체에 의해 제거 되었을 때
파종성 혈관내 응고증 등 : 혈액응고에 의해 소모되었을 때
백혈병, 재생불량성 빈혈, 암전이 등: 골수에 병이 생겨 혈소판을 제대로 만들지 못할 때

<b>백혈병(Leukemia)</b>

골수에 백혈병 세포가 자랄 때 정상기능을 하는 백혈구는 물론 적혈구와 혈소판도 제대로 만들 수 없는 상태가 됨
미성숙 백혈구들이 지나치게 증가하고 박테리아에 대한 방어능력이 없어져 세균 감염 또는 출혈로 사망할 수 있음
백혈병 환자들은 생명을 유지하기 위해 특히 혈소판 수혈에 의지하여 투병으로 유전

<b>신생아 용혈성 질환</b>

* <span style="color:orange; font-weight:bold">Rh 신생아 용혈성 질환</span>

Rh(D)음성 임산부가 Rh(D) 양성 아기를 가졌을 때
출산 또는 유산 등의 과정을 통하여 아기의 적혈구가 엄마의 혈액 내로 유입되면 엄마 몸의 면역 반응에 의해 엄마는 
Rh항체(anti-D) 를 가짐. anti-D를 가진 여성이 Rh(D) 아기를 다시 임신하면 아기의 Rh 양성 적혈구를 파괴하여 
아기에게 심한 황달, 빈혈 등이 나타남

* <span style="color:orange; font-weight:bold">ABO 신생아 용혈성 질환</span>

혈액형이 O형인 임산부가 A형 또는 B형인 아기를 가졌을 때 엄마가 가지고 있던 IgG type의 anti-A,B가 태반을 건너가 아기의 적혈구를 용혈시킴
           </pre>
                </div>
            </div>




            <div id="info3" class="infoDiv">
                <h2>혈액 종류</h2><br>
                <div id="info3-1" style="border: 1px solid gray; width: 70%;">
                    <pre>
한 명의 헌혈자로부터 패혈된 전혈헌혈은 성분별 분리과정을 거쳐 <span style="color:red">적혈구, 혈장, 혈소판</span>등으로 나누어집니다. 
           </pre>
                </div><br>
                <div id="info3-2_title" class="info3_total_title">
                    <h5>전혈: 대량출형 또는 수술시 사용</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img1"></div>
                <div id="info3-2" class="info3_total_content">
                    <pre>
* 심한 출혈이 있는 환자, 즉 총 혈액량의 25% 이상 되는 출혈이 지속되어 쇼크에 빠질 우려가 있는 환자에 게는 전혈을 
  수혈하는 것이 좋습니다.
  전혈은 산소운반능력과 혈액량 확장이 동시에 요구될 때에만 사용하는 것이 권장됩니다. 적은 출혈 또는 만성 빈혈 환자에게
  주입속도가 빠르게 전혈을 수혈하면 혈액량 과부하를 초래하여 폐부종 등을 유발할 수 있으므로 주의해야 합니다.

* 24시간 이상 저장된 전혈에는 생존 가능한 혈소판과 백혈구가 거의 없으며 Fator V와 VIII의 농도도 저하되어 있습니다. 
  따라서 혈소판과 백혈구를 
  공급하기 위해서는 혈소판 또는 백혈구제제를 수혈해야 하며 혈액 응고인자를 보충하기 위해서는 신선동결혈장(fresh frozen plasma)을
  수혈해야 합니다.
           </pre>
                </div>

                <div id="info3-3_title" class="info3_total_title">
                    <h5>농축적혈구 : 적혈구 부족 또는 기능 저하시, 철결핍, 악성.재생불량성 등 각종 빈혈, 일산화탄소 중독 등에 사용</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img2"></div>
                <div id="info3-3" class="info3_total_content">
                    <pre>
* 적혈구는 산소운반능력 부족의 증상을 보이는 만성 빈혈 환자 및 수술 또는 외상에 의해 총혈액량의 15%이상의 출혈이 있는 
  환자의 치료에 이용됩니다.
  신부전이나 악성종양 등 만성 빈혈 환자들은 혈액량이 정상이므로 전혈을 수혈하면 혈액량 과부하의 위험이 있습니다.

* 헤모글로빈 수치가 8g/dl이상인 경우에는 적혈구 수혈이 불필요한 경우가 많습니다. 수술이나 외상에 의한 총혈액량의 15%미만의
  출혈시에는 대부분 적혈구 수혈이 불필요합니다.
           </pre>
                </div>

                <div id="info3-4_title" class="info3_total_title">
                    <h5>농축혈소판 : 혈소판 기능 이상, 혈소판 감소 환자, 급성백혈병, 재생불량성 빈혈 등에 사용</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img3"></div>
                <div id="info3-4" class="info3_total_content">
                    <pre>
* 혈소판제제는 혈소판 감소증 또는 혈소판 기능장애가있는 환자에게 지혈기능을 회복시키기 위해 사용됩니다.

* 백혈병 또는 재생불량성 빈혈, 항암제 치료, 악성종양의 골수침범, 원발성 골수형성부전증 등으로 인하여 혈소판수가 
  20,000/ul이하로 감소된 환자들에게 주로 적응됩니다.
           </pre>
                </div>

                <div id="info3-5_title" class="info3_total_title">
                    <h5>성분채혈 혈소판 : 혈소판 기능 이상, 혈소판 감소 환자, 급성백혈병, 재생불량성 빈혈 등에 사용</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img4"></div>
                <div id="info3-5" class="info3_total_content">
                    <pre>
* 혈소판제제는 혈소판 감소증 또는 혈소판 기능장애가있는 환자에게 지혈기능을 회복시키기 위해 사용됩니다.

* 특히 HLA 동종면역에 의한 혈소판 수혈불응증 예방을 위해 계속적인 혈소판 수혈이 예상되는 백혈병, 재생불량성 빈혈
  또는 항암제 치료시 사용됩니다.

* 백혈병 또는 재생불량성 빈혈, 항암제 치료, 악성종양의 골수침범, 원발성 골수형성부전증 등으로 인하여 혈소판수가 
  20,000/ul이하로 감소된 환자들에게 주로 적응됩니다.
           </pre>
                </div>

                <div id="info3-5_title" class="info3_total_title">
                    <h5>동결침전제제 : 혈우병, 제8응고인자 결핍시에 사용</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img5"></div>
                <div id="info3-6" class="info3_total_content">
                    <pre>
* A형 혈우병, 폰빌레브란트병, 선천성 혹은 후천성 섬유소원 결핍증, 제XIII인자 결핍증, 산과적 합병증 또는 파종성혈관내응고증 등
  섬유소원의 소모와 관계된 질환들에 사용됩니다.
           </pre>
                </div>

                <div id="info3-7_title" class="info3_total_title">
                    <h5>신선동결혈장</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img6"></div>
                <div id="info3-7" class="info3_total_content">
                    <pre>
* 파종성혈관내응고증, 중증간질환, 쿠마딘계 항응고제 사용 시 출혈, 선천적 응고인자결핍증, 유전성 응고억제제 결핍증, 
  희석성 응고장애, 혈전성혈소판감소성 자반증, 용혈성요독성증후군, 비타민K결핍증, 출혈량을 예측할 수 없는 출혈로서 응급으로
  혈액응고 검사를 시행할 수 없는 경우 등에 사용됩니다.
           </pre>
                </div>
                <div id="info3-8_title" class="info3_total_title">
                    <h5>백혈구제거혈액제제</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info3_img7"></div>
                <div id="info3-8" class="info3_total_content">
                    <pre>
* 발열성 수혈부작용의 예방, HLA 동종면역을 예방할 수 있습니다.

* CMV등 바이러스 감염 예방 면역억제제를 투여하고 있는 장기이식 환자 또는 면역기능이 저하된 환자 등에게 적용됩니다.
           </pre>
                </div>

            </div>


            <div id="info4" class="infoDiv">
                <h2>혈액형 종류</h2><br><br>
                <div id="indo4-1_title">
                    <h5>혈액형이란?</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info4_img1"></div>
                <div id-"info4-1">
                    <pre>
* 생명체들의 다양성을 나타내는 형질 중의 하나
* ABO, Rh, MNSs, P, Li, lewis, Duffy, Kidd, Kell 등 수백가지가 존재
*  적혈구 표면에는 수많은 구조물이 있고, 적혈구 표면에서 중요한 일을 하고 있으며, 이런 구조물 때문에 ABO, Rh, MNSs, 
  P, Li, lewis 등 수많은 적혈구
* ABO혈액형 이외의 항원들은 수혈 후 비예기 항체(unexpected antibody)를 만들수 있어 ABO혈액형이 맞더라도 용혈성
  수혈부작용을 일으킬 수 있음. 우리나라 비예기 항체 빈도는 0.2~0.6%
* 비예기항체 검출 : 항체선별검사, 교차적합시험
             </pre>
                </div>
                <div id="info4-2_title">
                    <h5>ABO혈액형</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info4-2-1">
                    <pre>
ABO 혈액형 항원은 적혈구 뿐만 아니라 혈관내피세포(endothelial cell), 상피세포(epithelial) 등에도 존재하여
우리 몸의 거의 모든 장기들이 가지고 있음

분자구조의 정의 분자구조 : 탄수화물인 당사슬(sugar chain)로 구성, 사슬 끝부분만 다름, O형은 glycosyltransferase를
만들지 못해 끝부분이 비어있는 구조
                </pre>
                </div>
                <div id="info4_img2"></div>
                <div id="info4-2-2">
                    <pre>
장내 세균(박테리아 세포벽에도 ABO항원과 같은 당사슬 존재) 또는 음식을 통해 박테리아에 의해 ABO항원들이 우리의 
면역시스템에 노출되어 anti-A, anti-B 항체를 가짐

ABO혈액형검사 : Anti-A는 A형 적혈구와 Anti-B는 B형 적혈구와 반응하여 눈에 보이는 응집 일어남 A형인 사람에게 B형 적혈구를
수혈하면 A형인 사람이 이미 가지고 있는 Anti-B가 수혈된 B형 적혈구와 반응하여 보체계가 활성화 되고 급성 용혈성 수혈부작용이 나타남
                </pre>
                </div>
                <div id="info4_img3"></div>
                <div id="info4_img4"></div>
                <div id="info4-3-1">
                    <h5>Rh 혈액형</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                    <pre>
붉은털 원숭이의 적혈구를 토끼와 기니픽(실험용 쥐)에 주사하고 분리한 혈청을 사람의 적혈구와 반응시켰을 때 응집 현상 발견
오늘날은 D항원을 적혈구 표면에 가지고 있는지의 여부에 따라 결정, Rh양성은 D항원이 있는 경우, Rh음성은 D항원이 없는 경우
란드슈타이너(Landsteiner)에서 L자를 따고 비너 (Wiener) 에서 W자를 따서 LW혈액형으로 부르고 있음
Rh혈액형은 당사슬로 구성된 ABO혈액형과는 달리, 단백(protein)으로 구성되어 있고 오로지 적혈구에만 존재,Rh(D)음성환자에게는
Rh(D)음성혈액을 Rh(D)양성환자에게는 Rh(D)양성혈액을 수혈해야 함
               
                </pre>


                    <h5>백혈구 및 혈소판 혈액형</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                    <pre>
적혈구 뿐만 아니라 백혈구나 혈소판에도 혈액형이 있으며, 이들도 적혈구의 경우와 마찬가지로 백혈구 또는 혈소판 표면의 여러 구조물들이
혈액형 항원으로 작용

HLA 항원 등 백혈구의 항원이 환자에게 노출되면 이에 대한 항체가 환자에게 생성될 수 있는데 이 항체는 혈소판제제의 수혈 시 수혈된 혈소판을
깨뜨릴 수 있어 혈소판을 수혈해도 혈소판수치가 잘 올라가지 않은 혈소판 수혈불응증(Plateiet refractoriness)을 유발하며 이 경우에는
HLA항원이 같은 사람의 혈소판을 수혈해야 혈소판 수치가 올라감      
                </pre>
                </div>
                <div id="info4-3-2" style="border: 1px solid gray; width: 90%;">

                    <h5><span style="color:orange">희귀혈액형(또는 특정항원 음성혈액형)</span></h5>
                    <pre>
* Rh 음성 혈액형, weak-A 또는 weak-B형, cis-AB형, MkMk형, 바디바바디바(-D/-D)혈액형, 밀텐버거(Miltenberger)혈액형 및 기타
  특정항원 음성 혈액형 등

* 사람의 적혈구에는 혈액형을 결정짓는 항원이 있는데 현재 약 500개 이상의 항원이 있는 것으로 알려져 있음

* 이 중 대부분의 혈액형은 어떤 인구집단의 대부분의 사람에게 존재하거나 또는 그 소수의 사람에게만 존재하여 임상적으로 중요하지 않으나 
  가장 중요한 ABO혈액형과 Rh혈액형, 그 외 MNS, P, Kidd, Duffy 등의 약 20여종만이 임상적으로 중요함.

* 대부분의 사람들과는 달리 어떤 항원이 없을 경우를 “희귀혈액형” 또는 “특정항원 음성”이라고 함. 예를 들어 만일 ‘C’혈액형항원이 없는 
  환자분이 대부분의 사람이 헌혈한 ‘C’혈액형항원이 있는 혈액을 수혈 받을 경우, 환자 몸에는 본인의 혈액 중에 가지고 있지 않은 ‘C’ 
  혈액형항원에 대한 항체가 형성되어 수혈 시 환자에게 위험을 초래할 수 있는데 이런 경우에는 환자와 동일한 ‘C’ 혈액형항원이 
  없는 헌혈자의 혈액을 수혈 받아야 함.
                </pre>
                </div>
                <div id="info4-3-3">
                    <pre>
<b>Rh 음성 (Rh-)</b>

미국인들에서는 20%정도로 흔하나 우리나라는 1000명중 1~3명 정도로 아주 드묾
Rh음성인 사람들의 부모는 대부분 Rh양성
Rh면역글로블린(RhIG 또는 Rhogam)를 주사하면 문제를 일으킬 수 있는 anti-D의 생성 예방 가능


<b>Weak A 또는 Weak B형</b>

적혈구에는 A형 또는 B형 항원(antigen)이 약 100만개 정도 있음. 이보다 항원수가 적은 적혈구를 갖는 사람들도 있는데,혈액형 항원이 
적게 표현되므로 Weak A 또는 Weak B로 표현 Weak A : A2, A3,Am, Ax, Aei 등, Weak B : B3, Bm, Bx 등이 있음
아주 약한 A형 또는 B형은 O형으로 판정될 수 있으며 혈액형 정밀검사를 받아 보아야 정확한 혈액형을 알 수 있음.


<b>Weak-D형</b>

자신의 혈액형을 Rh음성으로 알고 있었던 사람이 다른 병원의 검사결과에서 Rh 양성으로 나왔다며 때에 따라 다르게 판정되는 검사결과에 당혹스러워
하는 경우가 있는데, Weak-D인 사람은 Rh양성인 사람에 비해 Rh 항원을 적게(약하게) 가지고 있어 통상적인 검사에는 Rh음성으로 판정될 수 있음.
Weak-D인 사람은 헌혈할 때는 Rh양성으로 판정되지만 수혈받아야 할 경우에는 Rh음성 혈액을 수혈받아야 함


<b>Cis-AB형</b>

A형 또는 B형 유전자는 따로 따로 각각 한 쪽 염색체(chromosome)에 위치하는데 cis-AB 유전자는 unequal crossing over에 의해 한 쪽 
염색체에 A형과 B형 유전자가 몰려있음
cis-AB형은 우리나라의 전남지역과 일본의 큐슈지역에서 주로 발견됩니다.
cis-AB형인 사람과 유전자 형이 A/O인 A형 사이에서는 AB형, A형 또는 O형이 나올 수 있습니다. 그래서 가족 간에 혈액형으로 오해가 생길 수도 있음
A2B3라는 혈액형이 있는데 A형보다 B형이 더 약하게 표현되어 일반 혈액형 검사 시에 A형으로 판정될 수 있고, 이것 또한 가족 간에 혈액형으로
오해를 하게 될 수 있는 소지가 될 수 있음


<b>MkMk형</b>

AMNSs 혈액형군의 항원이 없는 MkMk라는 세계적으로 아주 희귀한 혈액형이 있음


<b>바디바(-D/-D-)혈액형</b>

Rh혈액형에는 C, c, D, E, e 등을 비롯해 45가지나 되는 혈액형 항원이 존재
존재항원 D가 있으면 Rh+(양성), 없으면 Rh-(음성)
D는 있지만 C, c, E, e가 없는 혈액형이 있는데, 이 경우 C와 E 등이 없다는 의미로 ‘-D-‘로 표기하고 ‘바디바’ 로 읽음
바디바 유전자를 양쪽 부모로부터 받으면 ’-D-/-D-’(바디바바디바)의 혈액형을 갖게 됨 ‘-D-‘ 유전자 자체가 드물어 ‘바디바바디바’ 
혈액형이 생길 확률은 극히 낮음 바디바바디바 혈액형은 수혈 또는 임신 후에 거의 모든 사람의 혈액과 반응할 수 있는 anti-Rh17(anti-Hro)이라는
특이한 항체를 가짐

2004년 6월 ‘바디바바디바(-D-/-D-)’혈액형을 가진 산모가 유산에 따른 과다 출혈로 입원하여 국내에서 유일하게 동일한 혈액형을 가진 20대 여성으로부터
헌혈된 혈액으로 수혈했지만 수혈량이 부족해 대한적십자사를 통해 일본의 오사카 혈액원에서 혈액을 공수 받아 수혈


<b>밀텐버거(Miltenberger) 혈액형</b>

태국(9.7%), 대만(7.3%), 홍콩(6.3%) 등 동남아에는 흔하지만 중국과 일본, 미국 등에서는 0.1% 정도로 매우 드물며 국내서는 밀텐버거 항원을 
검사할 항체도 갖고 있지 못한 실정 
신생아 용혈성질환(태아의 적혈구를 파괴하는 질환)이나 용혈성 수혈부작용(자신이 갖고 있지 않은 항원을 가진 혈액이 수혈되면 그 혈액을 파괴해 사망에
이를 수도 있는 수혈부작용) 등의 원인 국내에서는 2002년 6월 마산에서 출생한 아기가 출생 직후 심한 빈혈 등의 증상을 보여 검사한 결과 밀텐버거
혈액형이 처음으로 확인
                </pre>
                </div>

            </div>

            <div id="info5" class="infoDiv">
               <h2>헌혈에 대한 오해와 진실</h2><br>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color:black;">
                                    <span style="color:red; font-weight:bold">Q</span> : 헌혈증서를 구입할 수 있다?</a><hr>
                            </h5>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <pre>
<span style="color:red; font-weight:bold">A</span> : 헌혈증서는 혈액관리법 제3조(혈액매매행위등의 금지)에 의해 매매가 금지되어 있습니다. 최근 인터넷상에 수혈관련 사연을 등록하여 헌혈증서를 모아서 이를 
    다시 수혈이 필요한 환자 및 보호자 등에 판매한다는 기사가 소개된 적이 있습니다.

    혈액관리법에서는 “누구든지 금전,재산상의 이익 기타 대가적 급부를 주거나 주기로 하고 타인의 혈액(제14조의 규정에 의한 헌혈증서를 포함한다)을
    제공하거나 이를 약속하여서는 아니된다”고 규정하고 있습니다. 그러므로 헌혈증서를 사고 파는 것은 위법 행위이며 관련법규에 의하여 처벌을 받을 수 있습니다.

    헌혈증서가 필요하신 분께서는 전국 적십자사 혈액원(기관리스트 참조)으로 문의하시면 기증증서를 소정의 절차를 거쳐 받으실 수 있습니다. 자세한 사항은 
    해당지역 혈액원으로 연락주시기 바랍니다.

<span style="color:orange; font-weight:bold">관련법규</span>

<b>혈액관리법 제3조(혈액매매행위등의 금지)</b>

①누구든지 금전,재산상의 이익 기타 대가적 급부를 받거나 받기로 하고 자신의 혈액(제14조의규정에 의한 헌혈증서를 포함한다)을 제공하거나 이를 
  약속하여서는 아니된다.

②누구든지 금전,재산상의 이익 기타 대가적 급부를 주거나 주기로 하고 타인의 혈액(제14조의 규정에 의한 헌혈증서를 포함한다)을 제공하거나 이를 
  약속하여서는 아니된다.

③누구든지 제1항 및 제2항의 규정에 위반되는 행위를 교사,방조 또는 알선하여서는 아니된다.

④누구든지 제1항 및 제2항의 규정에 위반되는 행위가 있음을 안 때에는 그 행위와 관련되는 혈액을 채혈하거나 수혈하여서는 아니된다.

<b>혈액관리법 제 18조(벌칙)</b>

①제3조 규정에 위반한 자는 5년 이하의 징역 또는 2천만원 이하의 벌금에 처한다.
                           </pre>
                            </div>
                            <hr>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" style="color:black">
                                    <span style="color:red; font-weight:bold">Q</span> : 헌혈을 하면 건강에 나쁘다? </a><hr>
                            </h5>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <pre>
<span style="color:red; font-weight:bold">A</span> : 우리 몸에 있는 혈액량은 남자의 경우 체중의 8%, 여자는 7% 정도이다. 예를 들어 체중이 60Kg인 남자의 몸 속에는 약 4,800mL의 혈액이 있고,
    50Kg인 여자는 3,500mL 정도의 혈액을 가지고 있다.

    전체 혈액량의 15%는 비상시를 대비해 여유로 가지고 있는 것으로, 헌혈 후 충분한 휴식을 취하면 건강에 아무런 지장을 주지 않는다.

    신체 내·외부의 변화에 대한 조절능력이 뛰어난 우리 몸은 헌혈 후 1~2일 정도면 일상생활에 지장이 없도록 혈관 내외의 혈액순환이 회복된다.
                            </pre>
                            </div><hr>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h5 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" style="color:black">
                                    <span style="color:red; font-weight:bold">Q</span> : 헌혈을 통해 에이즈 등 질병에 감염될 수 있다? </a><hr>
                            </h5>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <pre>
<span style="color:red; font-weight:bold">A</span> : 헌혈과정은 매우 안전하다. 헌혈에 사용되는 모든 기구(바늘, 혈액백 등)은 무균처리되어 있으며, 
    한번 사용 후에는 모두 폐기처분 하기 때문에 헌혈로 인해 에이즈등 다른질병에 감염될 위험이 전혀 없다.
                                </pre>
                            </div><hr>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 헌혈을 하면 살이 빠진다던데..., 다이어트에도 좋나요? </a><hr>
                        </h5>
                    </div>
                    <div id="collapse4" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 헌혈을 하면 헌혈량 만큼이 체외로 빠져나오는 것은 사실이지만 조직에 있던 혈액이 혈관 내로 바로 이동하여 보상하며,
    이후 며칠 또는 몇 주간 음식 및 수분 섭취 등으로 원래 상태로 보충된다. 따라서 헌혈은 다이어트와는 무관하다.
                            </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse5" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 헌혈을 많이 하면 혈관이 좁아진다고 하는데? </a><hr>
                        </h5>
                    </div>
                    <div id="collapse5" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 혈관은 외부로부터 바늘이 들어오면 순간적으로 수축한다. 그러나 곧 본래의 상태로 회복되므로, 헌혈의 횟수와 혈관수축과는 아무런 상관이 없다.
                                </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse6" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 헌혈을 하면 빈혈에 걸리지 않나요? </a><hr>
                        </h5>
                    </div>
                    <div id="collapse6" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 헌혈은 자기 몸에 여유로 가지고 있는 혈액을 나눠주는 것으로 헌혈 전에 충분한 혈액이 있는지를 판단하려고 적혈구 내의 혈색소(헤모글로빈)치를 
    측정하기 때문에 헌혈로 빈혈에 걸리지는 않는다.

    헌혈자를 보호하기 위하여 연간 헌혈가능 횟수도 전혈헌혈은 5회로 제한하고 있다.
                               </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse7" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 전에 헌혈을 하려다가 못하였는데 헌혈이 가능한가요? </a><hr>
                        </h5>
                    </div>
                    <div id="collapse7" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 일시적으로 헌혈에 참여하지 못한 경우, 다시 헌혈에 참여하실 수 있다. 헌혈 부적격 사유는 매우 다양하지만 우리나라의 헌혈 부적격 사유 중 
    가장 많은 비율을 차지하고 있는 것은 저비중(최근 5년간 부적격 사유 중 평균 43.7% 차지) 이다.

    혈액속의 혈색소(헤모글로빈)는 항상 일정하지 않기 때문에 헌혈 전 검사를 통해 헌혈가능 여부를 확인하고 있으며, 기타 질병 또는 약복용과 관련된 부적격은 
    사유별로 기간이 다르므로 헌혈의 집 간호사나 각 혈액원에 문의 하는 것이 좋다.
                           </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse8" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 나의 헌혈기록이나 검사결과에 대한 비밀보장이 어렵다는데....?</a><hr>
                        </h5>
                    </div>
                    <div id="collapse8" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 헌혈자의 모든 헌혈기록이나 검사결과는 비밀이 보장되며, 본인이 아닌 다른 분들에게는 공개되지 않도록 법적으로 보호된다.

    또한 개인정보보호를 위해 독립된 문진공간에서 문진이 진행되며 문진항목에 대한 답변또한 비밀이 유지된다. 또한 헌혈혈액 검사결과는 헌혈 후 1개월 정도 
    이내에 개인이 원하는 장소로 검사결과통보서를 발송해 준다.
                                </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse9" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 에이즈검사도 하나요? 왜 검사를 통보해주지 않나요?</a><hr>
                        </h5>
                    </div>
                    <div id="collapse9" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 헌혈한 혈액은 혈액형검사, B형간염 항원검사, C형간염 항체검사, ALT검사, 매독항체검사, HIV검사를 실시하나 에이즈 검사를 목적으로 
    헌혈에 참여하는 것을 막기 위해서 에이즈(HIV) 검사결과는 통보해 주지 않는다.

    각 구청 보건소에서는 개인의 비밀을 보장하면서 에이즈 검사를 실시한다.
                                </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse10" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 에이즈에 대해 더 자세히 알고 싶을 땐 어디로 문의하면 되나요?</a><hr>
                        </h5>
                    </div>
                    <div id="collapse10" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 에이즈에 대해 자세히 알고 싶을 때는 한국에이즈퇴치연맹, 대한에이즈예방협회, 질병관리본부로 문의해야 한다.
                                </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse11" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 언론 보도를 보면, 에이즈 감염혈액이 수혈되었다고 하는데....?</a><hr>
                        </h5>
                    </div>
                    <div id="collapse11" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 대한적십자사에서는 수혈자의 안전을 위해 HIV, 매독, B형 간염, C형 간염, 간기능 검사등을 실시한다. HIV와 간염 검사는 과거
    효소면역검사법(EIA)을 이용하였는데 이 검사법은 바이러스에 감염되지 않았는데도 양성반응을 보이는 경우(가짜 양성, 위양성)가 있으며, 감염 후 혈액 내에
    항원 또는 항체가 일정량 이상에 도달하지 못해 감염 여부를 진단할 수 없는 기간인 window period(잠복기)에는 혈액검사상 음성으로 판정될 수도 있었다. 
    에이즈나 간염에 감염된 혈액이 수혈되었다고 하는 보도의 대부분은 검사로는 바이러스 감염여부를 알아낼 수 없는 잠복기에 수혈된 경우이다.

    대한적십자사는 이러한 EIA 검사법을 보완하기 위해 혈액 속 바이러스의 핵산을 분리, 증폭하여 그 감염 유무를 확인하는 핵산증폭검사(NAT)를 도입해, 지난 
    2005년 2월부터 모든 헌혈혈액에 대해 검사를 실시하고 있다. 가장 선진화된 검사방법인 NAT 검사법은 기존의 효소면역측정법에 비하여 잠복기를 단축
    (HIV-11일, C형 간염 - 23일)하여 조기에 바이러스 감염 여부를 진단할 수 있는 방법이다. 그러나 NAT 검사법 역시 에이즈의 경우에는 11일간, C형 간염의
    경우에는 23일 정도의 잠복기를 가지고 있기 때문에 수혈로 인한 질병감염을 100% 막을 수는 없다.
                                </pre>
                        </div><hr>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse12" style="color:black">
                                <span style="color:red; font-weight:bold">Q</span> : 적십자사에서 피 장사 한다...?</a><hr>
                        </h5>
                    </div>
                    <div id="collapse12" class="panel-collapse collapse">
                        <div class="panel-body">
                            <pre>
<span style="color:red; font-weight:bold">A</span> : 많은 사람들이 아직도 혈액사업에 대해 많은 오해를 가지고 있다. 가장 많은 오해가 바로 혈액을 병원에 공급하고 받는 혈액수가와 
    연관된 부분일 것이다.

    대한적십자사는 혈액관리에 사용되는 재원을 혈액수가에만 의존하고 있으며, 국민들이 지로 형태로 납부하는 적십자회비와는 전혀 무관하다."

    혈액수가는 혈액원의 인건비, 의료품비, 기념품비, 헌혈의 집 임대비등 운영비와 홍보비 등에 사용되며, 우리나라의 혈액수가는 일본, 미국 등 주요 OECD국가의
    1/4 수준이다. 
                                </pre>
                        </div><hr>
                    </div>
                </div>
            </div>

            <div id="info6" class="infoDiv">

                <h2>수혈상식</h2><br><br>
                <h5>수혈이란?</h5>
                <hr align="left" style="border: solid 1px red; width: 5%;">
                <div id="info6-1" style="border: 1px solid gray; width: 70%;">
                    <pre>
혈액이 모자라는 환자에게 <span style="color:red">혈액을 주입</span>해 주는 치료 방법
                   </pre>
                </div><br>
                <div id="info6-2">
                    <h5>수혈이란?</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                    <pre>
<b>피를 이용한 치료방법</b>

옛날 로마시대의 귀족들은 젊고 씩씩한 검투사의 피를 마시면 회춘한다고 믿고 피를 마셨고, 성서의 구약시대에도 피를 많이 마신 것으로 추측
얼마나 많이들 피를 먹었는지 피를 먹지 말라는 하나님의 경고가 구약성서의 여러 곳에 나타남
‘나쁜 피’를 뽑아내면 뭔가 몹쓸 병이 나을 것이라는 생각에 피를 뽑아 내는 치료를 하기도 함
피를 뽑아내는 치료방법은 고대 이집트시대부터 19세기 중반까지 이용

이집트의 파라오가 병(elephantiasis)을 고치기 위해 피로 목욕을 하였다는 기록도 있고 개의 피를 마심으로써 공수병을 치료 하기도 했으며 노르웨이에서는 
간질과 괴혈병의 치료방법으로 물개 또는 고래의 피를 마셨다고 하며 한 전설에 의하면 15세기 후반에 만성 신장 질환에 걸려 사경을 헤매고 있던 교황을 치료하기
위하여 세명의 소년들의 피를 빼서 교황에게 넣어주는 치료를 시도하였으나 효과는 보지 못했다고 함    
                    
                </pre>
                </div>
                <div id="info6-3_title">
                    <h5>최초의 수혈과 금지령</h5>
                    <hr align="left" style="border: solid 1px red; width: 5%;">
                </div>
                <div id="info6_img1"></div>
                <div id="info6-3-1">
                    <pre>
* 피를 혈관 내로 주입하는 방법, 즉 수혈이라는 것은 1628년 William Harvey에 의해 혈액 이 우리 몸 속에서 어떻게 순환하는지에
  대해 규명된 이후 시도되었음.

* 최초의 수혈은 1665년 2월에 Richard Lower라는 영국 의사가 옥스퍼드대학에서 두 마리의 개를 가지고 시행한 실험에서 한쪽 개의 
  목에 있는 동맥을 다른 개의 정맥에 연결한 후 혈액이 주입되게 하였는데 이것이 최초의 수혈 실험이었음.
           </pre>
                </div>

                <div id="info6_img2"></div>
                <div id="info6-3-2">
                    <pre>
* 사람에게 시행한 최초의 수혈은 루이 14세의 주치의인 Jean Denis라는 의사가 1667년 6월에 원인 모를 열병을 앓고 있었던 15세 
  소년을 대상으로 어린 양의 혈액을 수혈한 것이 인류 최초의 수혈이었음. 그러나, 수혈치료를 받던 Denis의 환자가 수혈장치 고장으로
  사망한 후 파리의 의사회는 수혈 금지령을 공표했고, 카톨릭 교황이 수혈금지 칙령을 내림.
           </pre>
                </div>
                <div id="info6-4">
                    <pre>
<b>James Blundell과 수혈의 재탄생</b>

영국의 산부인과 의사인 James Blundell(1790~1877)은 1818년 12월에 위암으로 거의 죽어가던 환자에게 사람의 혈액 약 400cc를 수혈하는 데 성공하였는데
이것은 인류 최초로 사람의 혈액을 사용한 수혈이었다고 인정받고 있음

Blundell의 영향으로 여러 산부인과 의사들이 분만 후 출혈 환자에게 수혈 치료를 감행하였으나 19세기 중엽에는 과연 이런 수혈방법이 환자에게 진정으로 도움이
되는가에 대한 논쟁이 일기 시작

많은 의사들이 이런 수혈방법이 위험성이 높다는 사실을 인정하게 되었으며 수혈 후 회복되었다고 생각한 환자들도 그것이 정말로 수혈에 의한 효과였는지에 대해 
의문을 가지게 되었고, 48예의 수혈 결과를 분석한 당시의 한 연구에 의하면 무려 18예에서 치명적인 결과를 초래

혈액형에 대한 개념이 없었기 때문에 상당수에서 용혈성 수혈부작용이 생겼을 것으로 추측, 또한 직접수혈이라는 시술을 행하려면 혈액제공자의 동맥과 수혈 받을
환자의 정맥을 잇는 어려운 전처치를 해야 하므로 이 과정에서도 여러 합병증이 초래되었을 가능성이 높음

<b>피가 응고되지 않게 하기 위한 노력들</b>

피는 몸 밖으로 나오면 응고 되며, 응고된 피를 수혈할 수 없으므로 할 수 없이 응고되기 전에 빨리 수혈해야 했고 그러기 위해서는 할 수 없이 혈액제공자의
동맥과 수혈 받을 환자의 정맥을 연결

Sodium bicarbonate 또는 sodium phosphate 등과 섞어 섬유소원을 제거하여 항응고 효과를 보려 했으나 만족할 만한 결과를 얻지는 못함

1914년에 와서야 sodium citrate가 항응고 작용이 있음을 알게 되었으나 이때도 항응고 효과를 보기 위해서는 많은 양의 sodium citrate를 피와 섞어 주어야
했기 때문에 혈액이 희석될 수 밖에 없었음

Rous와 Tumer는 salt, isocitrate 및 glucose를 섞어 항응고보존제를 만들었고 이것은 실제 1차 세계대전 당시에 수혈에 이용됨

제대로 된 항응고보존제는 1943년에 Loutit와 Molison에 의해 citric acid, sodium citrate 및 dextrose를 혼합하여 혈액 희석 효과를 줄인 
ACD(acid·citrate·dextrose)를 만들어 혈액이 응고되지 않으면서 21일간이나 보존할 수 있게 하는데 성공

이후 1957년에는 CPD (citrate·phosphate·dextrose)가 개발되었고 최근에는 여기에 adenin을 첨가한 CPDA·1을 항응고보존제로 사용하게 되어 적혈구체제를 
무려 35일간이나 보존할 수 있게 됨

<b>Karl Landsteiner와 혈액형의 발견</b>

Karl Landsteiner는 1868년에 오스트리아의 비엔나에서 변호사의 아들로 태어나 비엔나대학에서 의학을 공부한 이후 병리학자가 되어 면역의 기전 및 항체의 성상
등에 대한 많은 연구업적을 남김

ABO 혈액형의 발견은 그의 가장 큰 업적 중 하나이며 이로 인해 그는 1930년에 노벨상을 받음

동물의 혈액을 사람에게 수혈하였을 때 수혈된 동물의 적혈구가 엉키고 용혈되었다고 보고한 1875년 Landois의 실험결과를 주목하였던 그는 사람의 혈액을 다른 
사람에게 수혈했을 때도 적혈구가 용혈되고 이로 인해 쇼크, 황달 및 헤모글로빈뇨증이 초래됨을 알게 됨

1900년에 Landsteiner는 서로 다른 세가지의 동종응집소(isoagglutinin)가 존재한다는 사실을 규명하였고 이듬해에는 마침내 혈액형을 A형, B형, 및 C형(후에 
O형으로 이름을 고침) 세가지로 분류

이후 네번째 혈액형인 AB형은 1902년에 그의 제자인 DeCastello와 Sturli에 의해 발견

1907년 뉴욕의 저명한 병리학자였던 Richard Well 밑에서 당시 인턴으로 일하던 Ottenberg는 Landsteiner의 발견을 중시하였고 마침내 수혈 하기 전에 환자와 
공혈자의 혈액형을 검사하였던 최초의 사람이 되었고, Ottenberg는 또한 수혈 전에 수혈적합검사(교차시험)를 최초로 시행한 사람으로 기록됨 
                </pre>
                </div>

            </div>


        </div>


        <!-- infoDiv script -->
        <script>
            function showDiv(clicked_info) {
                $(".infoDiv").css('display', 'none');
                $("#" + clicked_info + "").css('display', 'block');
            }

        </script>




        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>