<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, bloodDonation.model.vo.BloodDonation, bloodDonation.model.vo.PageData"%>
<%
	PageData pd = (PageData) request.getAttribute("pageData");
	ArrayList<BloodDonation> bdList = pd.getPageList();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<table border="1">
			<%
				for (BloodDonation bd : bdList) {
			%>
			<tr>
				<th>아이디</th>
				<td>&nbsp<%=bd.getUserId()%></td>
				<th>이름</th>
				<td>&nbsp<%=bd.getUserName()%></td>
				<th>혈액형</th>
				<td>&nbsp<%=bd.getBloodType()%></td>
				<th>헌혈일자</th>
				<td>&nbsp<%=bd.getDonorDate()%></td>
				<th>생년일자</th>
				<td>&nbsp<%=bd.getUserBirth()%></td>
				<th>성별</th>
				<td>&nbsp<%=bd.getGender()%></td>
				<th>헌혈증번호</th>
				<td>&nbsp<%=bd.getCardNumber()%></td>
				<th>헌혈종류</th>
				<td>&nbsp<%=bd.getDonorType()%></td>
			</tr>

			<%
				}
			%>
			<tr>
				<td colspan=16 align=center><%= pd.getPageNavi() %></td>
			</tr>

		</table>

	</center>


</body>
</html>