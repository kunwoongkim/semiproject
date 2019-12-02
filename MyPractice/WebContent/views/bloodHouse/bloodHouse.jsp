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

#footer {
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
   font-size: 25px;
   font-weight:bold;
   background:#c81a00;
   color:white;
}

table {
   border: 1px solid #EAEAEA;
}

th {
   width: 90px;
   text-align: center;
   background-color: #c81a00;
   color:white;
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
   width: 100%;
   height: 50%;
   
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
#img_icon1{
   width:30px;
   height:30px;
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
                  <h1 style="color: dimgrey; font-weight: bold;">헌혈의집 찾기</h1>
               </center>
            </div>
            <div id="content1-2">
               <div id="content1-2-1" >

                  <a href="/bloodHouse"><button class="btn btn-danger" name="mybtn" style="font-size:25px">헌혈의집
                        찾기</button></a>
               </div>


            </div>
         </div>
         <div id="content2">
            <div id="content2-1">
              &nbsp; <br>
               <h6 style="color: gray">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"
                     src="/images/login_icon.png"
                     width="30px ">헌혈의집 찾기 
               </h6>

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;헌혈의집 찾기</h1><hr>
            
            </div>
            <div id="content2-2">
               <div id="content2-2-1"></div>
               <div id="content2-2-2">



                  <table id="table" border="1">
                     <tr>
                        <td colspan=16 align=center id="searchvar">
                           <form action="/bloodHouseSearch" method="get">
                              <input id="search" type="text" name="search" value="${search }"
                                 placeholder="지역명을 입력해주세요."> <input type="submit"
                                 value="검색">
                           </form>
                        </td>
                     </tr>
                     <tr id="menu" style="text-align : center">

                        <th>헌혈의집명</th>
                        <th>상세주소</th>
                        <th>전화번호</th>

                     </tr>

                     <c:forEach items="${pageData.pageList}" var="bh" varStatus="i">
                        <tr  id="houseName">

                           <td style="text-align : center ;"><a href="#" name="houseName" class="houseName"><c:out
                                    value="${bh.houseName }" /></a></td>
                           <td><c:out value="${bh.houseAddr }" />
                              </button></td>
                           <td><c:out value="${bh.phoneNum }" /></td>



                        </tr>
                     </c:forEach>


                     <tr>
                        <td colspan=16 align=center>${pageData.getPageNavi() }</td>
                     </tr>
                     <tr>
                        <td colspan=16 align=center><div id="contents_layer2">
                              <center>
                                 <div id="map"
                                    style="border: 1px solid #000; width: 95%; height: 500px; margin: 20px;"></div>
                              </center>
                           </div></td>
                     </tr>
                  </table>










               </div>
               <div id="content2-2-3"></div>

            </div>
         </div>
      </div>
      <div id="footer">
         <center>
            <h6 style="color: darkgray">Copyright KH Corp.All rights
               reserved</h6>
         </center>
      </div>

    <img src="images/icon.png" id="img1">
   </div>


   <script>
      var mapOption = {
         //지도 객체 생성시 옵션
         center : new naver.maps.LatLng(37.548283, 126.870837),
         zoom : 20
      };
      // 설정한 옵션으로 map 위치에 지도 생성
      var map = new naver.maps.Map('map', mapOption);
      var marker = new naver.maps.Marker({
         position : new naver.maps.LatLng(37.548283, 126.870837),
         map : map
      });

      /*var infoWindow;
      var address = '';
      var contentString = [
         '<div iclass="iw_inner">',
         '<p>' + address + '</p>',
         '</div>'
      ].join('');



      //지도 내부 클릭시 동작(위도, 경도 )
      naver.maps.Event.addListener(map, 'click', function(e) {
         if (infoWindow != null) {
             if (infoWindow.getMap()) { //윈도우 창이 열린채로 다른 창이 열렸을때 
                 infoWindow.close(); //그 창을 닫으라는 소리.
             }
         }
         marker.setPosition(e.latlng);
         $("#lat").text("위도 : " + e.coord.lat());
         $("#lng").text("경도 : " + e.coord.lng());




           //클립된 좌표의 주소를 가져오기 위한 함수 
         naver.maps.Service.reverseGeocode({
             location: new naver.maps.LatLng(e.coord.lat(), e.coord.lng())
         }, function(status, response) {
             //주소값을 못받는경우
             if (status !== naver.maps.Service.Status.OK) {
                 return alert("Something Wrong!!");
             }
             //JSON 형태로 응답 받아서 저장
             var result = response.result,
                 items = result.items;
             console.log(response.result);
             //두번째 인덱스에 있는 주소값을 저장
             address = items[1].address;
             //커서 클릭시 나오는 정보창 수정
             contentString = [
                 "<div iclass='iw_inner'>",
                 "<p>" + address + "</p>",
                 "</div>"
             ].join('');

         });
      });



      naver.maps.Event.addListener(marker, 'click', function(e) {
         infoWindow = new naver.maps.InfoWindow({
             //정보창에 넣을 내용입력
             content: contentString
         });
         //정보창이 열려있는 경우
         if (infoWindow.getMap()) {
             //현재 정보창을 닫음
             infoWindow.close();
         } else {
             //정보창 열기
             infoWindow.open(map, marker);
         }

      });
      
       */

      function searchAddressToCoordinate(address) {

         naver.maps.Service
               .geocode(
                     {
                        query : address
                     },
                     function(status, response) {
                        if (status === naver.maps.Service.Status.ERROR) {
                           return alert('Something Wrong!');
                        }

                        if (response.v2.meta.totalCount === 0) {

                           return alert('totalCount'
                                 + response.v2.meta.totalCount);
                        }

                        var htmlAddresses = [], item = response.v2.addresses[0], point = new naver.maps.Point(
                              item.x, item.y);

                        var marker = new naver.maps.Marker({
                           position : new naver.maps.Point(item.x,
                                 item.y),
                           map : map
                        });

                        /* var marker = new naver.maps.Marker({
                            position: new naver.maps.LatLng(item.x, item.y),
                            map: map
                        }); */

                        /* if (item.roadAddress) {
                            htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
                        }

                        if (item.jibunAddress) {
                            htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
                        }

                        if (item.englishAddress) {
                            htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
                        }
                         */

                        /*  infoWindow.setContent([
                             '<div style="padding:10px;min-width:200px;line-height:150%;">',
                             '<h4 style="margin-top:5px;">검색 주소 : '+ address +'</h4><br />',
                             htmlAddresses.join('<br />'),
                             '</div>'
                         ].join('\n')); 
                         */
                        map.setCenter(point);

                        //infoWindow.open(map, point);

                     });
      }

      function initGeocoder() {
         map.addListener('click', function(e) {
            searchCoordinateToAddress(e.coord);
         });

         $('#address').on('keydown', function(e) {
            var keyCode = e.which;

            if (keyCode === 13) { // Enter Key
               searchAddressToCoordinate($('#address').val());
            }
         });

         $('.houseName').on('click', function(e) {
            e.preventDefault();
            var address = $(this).parent().next().html();
            searchAddressToCoordinate(address);
         });

      }

      function makeAddress(item) {
         if (!item) {
            return;
         }

         var name = item.name, region = item.region, land = item.land, isRoadAddress = name === 'roadaddr';

         var sido = '', sigugun = '', dongmyun = '', ri = '', rest = '';

         if (hasArea(region.area1)) {
            sido = region.area1.name;
         }

         if (hasArea(region.area2)) {
            sigugun = region.area2.name;
         }

         if (hasArea(region.area3)) {
            dongmyun = region.area3.name;
         }

         if (hasArea(region.area4)) {
            ri = region.area4.name;
         }

         if (land) {
            if (hasData(land.number1)) {
               if (hasData(land.type) && land.type === '2') {
                  rest += '산';
               }

               rest += land.number1;

               if (hasData(land.number2)) {
                  rest += ('-' + land.number2);
               }
            }

            if (isRoadAddress === true) {
               if (checkLastString(dongmyun, '면')) {
                  ri = land.name;
               } else {
                  dongmyun = land.name;
                  ri = '';
               }

               if (hasAddition(land.addition0)) {
                  rest += ' ' + land.addition0.value;
               }
            }
         }

         return [ sido, sigugun, dongmyun, ri, rest ].join(' ');
      }

      function hasArea(area) {
         return !!(area && area.name && area.name !== '');
      }

      function hasData(data) {
         return !!(data && data !== '');
      }

      function checkLastString(word, lastString) {
         return new RegExp(lastString + '$').test(word);
      }

      function hasAddition(addition) {
         return !!(addition && addition.value);
      }

      naver.maps.onJSContentLoaded = initGeocoder;
   </script>


	 <script src="/META-INF/vendor/jquery/jquery.min.js"></script>
  <script src="/META-INF/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
		 <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>