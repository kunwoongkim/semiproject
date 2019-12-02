<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-2.0.0.js"></script>
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
div {
   box-sizing: border-box;
 font-family: 'Nanum Gothic', sans-serif;
}

#container {
    height: 1500px;
      width: 100%;
}



#content {
   float : left;
   height: 90%;
   width: 100%;
}

#footer {
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
button[id^=btn] {

   height: 40px;

   width: 80px;

}
button[name=mybtn] {

   height: 100%;

   width: 100%;

   font-size: 25px;

   font-weight:bold;
	 color:gray;
   

   

   

}   



#searchbtn {

   margin-top: 25px;

   height: 40px;

}
	
	button[name=mybtn]:hover{                                   
    box-shadow:200px 0 0 150px rgba(200,26,0,1) inset; 
    }
/* ################### payment Content DIV #########################*/
#content_payment {
   float: left;
   width: 75%;
   height: 90%;
   text-align: center;
   /* border: 1px solid blue; */
   padding: 40px;
}

.payment {
   float: left;
   width: 100%;
   height: auto;
   text-align: center;
   /* border: 1px solid red; */
}

.payment_head {
   float: left;
   width: 100%;
   height: auto;
   text-align: center;
   /* border: 1px solid red; */
}

.head_info {
   float: left;
   width: 60%;
   height: 500px;
   text-align: center;
   padding: 50px;
}

.head_img1 {
   float: left;
   width: 40%;
   height: 500px;
   background-image: url(../../images/payment1_2.jpg);
   background-repeat: no-repeat;
}

.head_img2 {
   float: left;
   width: 100%;
   height: 732px;
   background-image: url(../../images/payment2.PNG);
   background-repeat: no-repeat;
}

.payment_main {
   float: left;
   width: 100%;
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
                  <h1 style="color: dimgrey; font-weight: bold;">후원 캠페인</h1>
               </center>
            </div>
            <div id="content1-2">
               <div id="content1-2-1">

                  <a href="/views/payment/payment.jsp"><button class="btn" name="mybtn"
                         value="info1" style="background:#c81a00;color:white;">후원 캠페인 참여하기</button></a>
               </div>
               <div id="content1-2-2">
               <c:if test="${sessionScope.member.userId != null }">
                  <a href="/donationMy.do"><button class="btn" name="mybtn"
                         value="info2">나의 후원정보</button></a>
               </c:if>
               </div>
               
               <div id="content1-2-3">
               <c:if test="${sessionScope.member.userId eq 'admin'}">
                  <a href="/doantionAll.do"><button class="btn" name="mybtn"
                         value="info3">후원회원 전체정보</button></a>
               </c:if>

               </div>
               

            </div>
         </div>

         <!--##################### payment ##########################-->
     <div id="content2">
     <div id="content2-1"> 
       &nbsp; <br>

               <h6 style="color: gray">

                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img id="img_icon1"

                     src="/images/login_icon.png"

                     width="30px ">후원캠페인>후원 캠페인참여하기

               </h6>

 

               <h1 style="font-weight: bold; color: dimgrey">&nbsp;&nbsp;&nbsp;후원 캠페인 참여하기</h1><hr>

     
     
     </div>
     <div id="content2-2">  
   <form action="/donation.do" id="frm">
   <input type="hidden" name="donationId" value="${sessionScope.member.userId}">
   <input type="hidden" name="donationNickname" value="${sessionScope.member.userNickName}">
   <input type="hidden" name="donationPg" id="donationPg">
   <input type="hidden" name="donationPay" id="donationPay">
   </form>
         
         <div id="content_payment">
            <div class="payment">
               <div class="payment_head">
                  <div class="head_info">
                     <pre>
                        
                        
                        
                        
<span style="color: darkblue"><h3>RedLine 후원 캠페인</h3></span>
<b>후원금은 도움이 필요한 이웃들을 위해 소중히 사용됩니다.

여러분의 도움으로 소외된 이웃들이 밝고 건강하게 지낼수 있도록

<span style="color: crimson"><b>RedLine</b> </span>커뮤니티가 후원합니다.</b>



<span style="color: yellow; background-color: black"><b>KaKaoPay로 후원 가능합니다.</b></span>
                        </pre>
                  </div>
                  <div class="head_img1"></div>
                  <div class="head_img2"></div>

               </div>
               <div class="payment_main">
                  <div class="panel-group" id="accordion">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <h5 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion"
                                 href="#collapse1"> <button style="color: black;width:100%" class="btn btn-warning"><b>kakaoPay로 후원하기</b></button>
                              </a>
                              <hr>
                           </h5>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse in">
                           <div class="panel-body">
                              <h4>5,000원</h4>
                              <button type="button" class="btn btn-warning" id="btn5000" style="width:10%">기부하기</button>
                              <br><br>
                              <h4>10,000원</h4>
                              <button type="button" class="btn btn-warning" id="btn10000" style="width:10%">기부하기</button><br>
                              <br><br>
                              <h4>내가 기부금액 정하기</h4>
                              <input type="text" id="jackpotMoney">원<br>
                              <input type="button" style="width:10%" class="btn btn-warning" id="btnJackpot" onclick="fn_money()" value="기부하기">
                              <button type="button" style="display:none" id="hiddenBtn"></button>
                           </div>
                           <hr>
                        </div>
                     </div>
                  </div>
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
      
      function fn_money() {
         var money = $("#jackpotMoney").val();
         if(money >= 1000){
            $("#hiddenBtn").click();
         }else {
            alert("1000원 이상 후원금액을 입력해 주세요.");
         }
      }
      
      
      $(document).ready(function() {
          $("#btn5000").click(function() {
             var IMP = window.IMP; // 생략가능
                 IMP.init('imp45735715'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                 var msg;
                 
                 IMP.request_pay({
                     pg : 'kakaopay', // version 1.1.0부터 지원.
                     pay_method : 'card',
                     merchant_uid : 'merchant_' + new Date().getTime(),
                     name : '${sessionScope.member.userName}님의'+'RedLine후원금5,000원',
                     amount : 5000,
                     buyer_email : '${sessionScope.member.email}',
                     buyer_name : '${sessionScope.member.userName}',
                     buyer_tel : '${sessionScope.member.phone}',
                     buyer_addr : '${sessionScope.member.addr}',
                     buyer_postcode : '123-456',
                     //m_redirect_url : 'https://www.yourdomain.com/payments/complete'
                 }, function(rsp) {
                     if ( rsp.success ) {
                         var msg = '결제가 완료되었습니다.';
                         msg += '고유ID : ' + rsp.imp_uid;
                         msg += '상점 거래ID : ' + rsp.merchant_uid;
                         msg += '결제 금액 : ' + rsp.paid_amount;
                         msg += '카드 승인번호 : ' + rsp.apply_num;
                         
                         $("#donationPg").attr('value','kakaoPay');
                         $("#donationPay").attr('value','5000');
                         $("#frm").submit();
                         
                     } else {
                         var msg = '결제에 실패하였습니다.';
                         msg += '에러내용 : ' + rsp.error_msg;
                     }
                     alert(msg);
                  
      
                 });
          });   
          
          $("#btn10000").click(function() {
             var IMP = window.IMP; // 생략가능
                 IMP.init('imp45735715'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                 var msg;
                 
                 IMP.request_pay({
                     pg : 'kakaopay', // version 1.1.0부터 지원.
                     pay_method : 'card',
                     merchant_uid : 'merchant_' + new Date().getTime(),
                     name : '${sessionScope.member.userName}님의'+'RedLine후원금10,000원',
                     amount : 10000,
                     buyer_email : '${sessionScope.member.email}',
                     buyer_name : '${sessionScope.member.userName}',
                     buyer_tel : '${sessionScope.member.phone}',
                     buyer_addr : '${sessionScope.member.addr}',
                     buyer_postcode : '123-456',
                     //m_redirect_url : 'https://www.yourdomain.com/payments/complete'
                 }, function(rsp) {
                     if ( rsp.success ) {
                         var msg = '결제가 완료되었습니다.';
                         msg += '고유ID : ' + rsp.imp_uid;
                         msg += '상점 거래ID : ' + rsp.merchant_uid;
                         msg += '결제 금액 : ' + rsp.paid_amount;
                         msg += '카드 승인번호 : ' + rsp.apply_num;
                         
                         $("#donationPg").attr('value','kakaoPay');
                         $("#donationPay").attr('value','10000');
                         $("#frm").submit();
                     } else {
                         var msg = '결제에 실패하였습니다.';
                         msg += '에러내용 : ' + rsp.error_msg;
                     }
                     alert(msg);
                 });
          });   
   
             $("#hiddenBtn").click(function() {
                var IMP = window.IMP; // 생략가능
                    IMP.init('imp45735715'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                    var msg;
                    
                    IMP.request_pay({
                        pg : 'kakaopay', // version 1.1.0부터 지원.
                        pay_method : 'card',
                        merchant_uid : 'merchant_' + new Date().getTime(),
                        name : '${sessionScope.member.userName}님의'+'RedLine후원금'+$("#jackpotMoney").val()+'원',
                        amount : $("#jackpotMoney").val(),
                        buyer_email : '${sessionScope.member.email}',
                        buyer_name : '${sessionScope.member.userName}',
                        buyer_tel : '${sessionScope.member.phone}',
                        buyer_addr : '${sessionScope.member.addr}',
                        buyer_postcode : '123-456',
                        //m_redirect_url : 'https://www.yourdomain.com/payments/complete'
                    }, function(rsp) {
                        if ( rsp.success ) {
                            var msg = '결제가 완료되었습니다.';
                            msg += '고유ID : ' + rsp.imp_uid;
                            msg += '상점 거래ID : ' + rsp.merchant_uid;
                            msg += '결제 금액 : ' + rsp.paid_amount;
                            msg += '카드 승인번호 : ' + rsp.apply_num;
                            
                            $("#donationPg").attr('value','kakaoPay');
                            $("#donationPay").attr('value',$("#jackpotMoney").val());
                            $("#frm").submit();
                            
                        } else {
                            var msg = '결제에 실패하였습니다.';
                            msg += '에러내용 : ' + rsp.error_msg;
                        }
                        alert(msg);
                     
         
                    });
             });   
   });
      </script>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <!--  <script src="https://code.jquery.com/jquery-2.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script
         src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
         integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
         crossorigin="anonymous"></script> -->
      <script
         src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
         integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
         crossorigin="anonymous"></script>
</body>
</html>