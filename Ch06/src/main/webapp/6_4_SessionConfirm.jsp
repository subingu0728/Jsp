<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>6_4_SessionConfirm</title>
</head>
<body>
	<h3>4.Session 데이터 확인</h3>
	<%
		String sid = session.getId();
		String name = (String) session.getAttribute("name");
		String uid = (String) session.getAttribute("uid");
	%>
	<p>
		sid : <%= sid %><br />
		name : <%= name %><br />
		uid : <%= uid %><br />
	</p>
	
</body>
</html>