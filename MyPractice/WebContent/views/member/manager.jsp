<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.Member, java.util.ArrayList, member.model.vo.PageData"%>

<%

	PageData pd = (PageData) request.getAttribute("pageData");
	ArrayList<Member> memList = pd.getPageList();
	Member member = (Member)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
</head>
<body>

<form action="/memberAll" method="post"></form>
	<h1>관리자 페이지</h1>


		<table>
			<tr>
				<th>아이디</th>
				<th>생년월일</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>주소</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>혈액형</th>
				<th>성별</th>

			</tr>
			<%
				for (Member memberOne : memList) {
			%>
			<tr>

				<td><%=memberOne.getUserId()%></td>
				<td><%=memberOne.getUsernum1()%></td>
				<td><%=memberOne.getUserName()%></td>
				<td><%=memberOne.getUserNickName()%></td>
				<td><%=memberOne.getAddr()%></td>
				<td><%=memberOne.getPhone()%></td>
				<td><%=memberOne.getEmail()%></td>
				<td><%=memberOne.getBloodType()%></td>
				<td><%=memberOne.getGender()%></td>


			</tr>
			<%
				}
			%>
			<tr>

				<td colspan="9" align=center><%=pd.getPageNavi()%></td>
			</tr>
		</table>
		

</form>


</body>
</html>