<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
   src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=obpxe2ta7w&submodules=geocoder"></script>
</script>
<title>헌혈의집 찾기</title>
<script src="../../js/jquery-2.0.0.js"></script>

    <style>
    div {
           
            box-sizing: border-box;
        }
    #wrapper {
            margin: 0 auto;
            width: 100%;
        }
      #header {
            height: 40px;
            
        }
         #header_layer1{
            float: left;
            width: 50%;
            height: 100%;
        }
        #header_layer2{
            float: left;
            width: 50%;
            height: 100%;
        }
        #contents{
            height: 600px;
        }
        #contents_layer1{
            float: left;
            height: 100%;
            width: 50%;
        }
        #contents_layer2{
            float: left;
            height: 100%;
            width: 50%;
        }
        th{
            width: 250px;
        }
       
      
        
        
    </style>

</head>
<body>
   <h1>헌혈의집 찾기</h1>
<h4>가까운 지역명으로 검색하기</h4>
<h>2014년 1월 1일부터 공공기관에서 도로명 주소 사용을 의무화 하고 있습니다.
    도로명주소 안내시스템(http://www.juso.go.kr)을 통해 지번주소로 도로명주소 검색이 가능합니다.</h><br><br><br>

            <p>마커위치</p>
            <p id="lat">위도 : 37.533807</p>
            <p id="lng">경도 : 126.896772</p>
   

<div id="wrapper">
    <div id="header">
        <div id="header_layer1">
         <center>
         
                                     <table border="1">
                                <tr>
                                    <td colspan=16 align=center>
                                        <form action="/bloodHouseSearch" method="get">
                                            <input type="text" name="search" value="${search }" placeholder="지역명을 입력해주세요.">
                                            <input type="submit" value="검색">
                                        </form>
                                    </td>
                                </tr>
                                   <tr>
                                      
                                   <th>헌혈의집명</th>
                               <th>상세주소</th>
                              <th>전화번호</th>
                                    
                                </tr>

                                <c:forEach items="${pageData.pageList}" var="bh" varStatus="i">
                                    <tr>
                                   
                                         <td><a href="#" name="houseName" class="houseName"><c:out value="${bh.houseName }" /></a></td>
                                       <td><c:out value="${bh.houseAddr }" /></button></td>
                                        <td><c:out value="${bh.phoneNum }" /></td>
                                          
                                       
                                         
                                    </tr>
                                </c:forEach>


                                <tr>
                                    <td colspan=16 align=center>${pageData.getPageNavi() }</td>
                                </tr>
                            </table>
         
         
         
         
       </center>
        </div>
    <div id="contents_layer2">
        <center><div id="map" style="border: 1px solid #000; width: 90%; height: 550px; margin: 20px;"></div></center>
        </div>
    </div>
    
    </div>






<script>


    var mapOption = {
        //지도 객체 생성시 옵션
        center: new naver.maps.LatLng(37.548283, 126.870837),
        zoom: 20
    };
    // 설정한 옵션으로 map 위치에 지도 생성
    var map = new naver.maps.Map('map', mapOption);
    var marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.548283, 126.870837),
        map: map
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
    
        naver.maps.Service.geocode({
            query: address
        }, function(status, response) {
            if (status === naver.maps.Service.Status.ERROR) {
                return alert('Something Wrong!');
            }

            if (response.v2.meta.totalCount === 0) {
               
                return alert('totalCount' + response.v2.meta.totalCount);
            }

            var htmlAddresses = [],
                item = response.v2.addresses[0],
                point = new naver.maps.Point(item.x, item.y);
               
            var marker = new naver.maps.Marker({
                position: new naver.maps.Point(item.x, item.y),
                map: map
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

        var name = item.name,
            region = item.region,
            land = item.land,
            isRoadAddress = name === 'roadaddr';

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

        return [sido, sigugun, dongmyun, ri, rest].join(' ');
    }

    function hasArea(area) {
        return !!(area && area.name && area.name !== '');
    }

    function hasData(data) {
        return !!(data && data !== '');
    }

    function checkLastString (word, lastString) {
        return new RegExp(lastString + '$').test(word);
    }

    function hasAddition (addition) {
        return !!(addition && addition.value);
    }

    naver.maps.onJSContentLoaded = initGeocoder;
</script>
   
   
   
</body>
</html>