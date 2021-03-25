<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//데이터베이스 처리 1~6단계
	String host = "jdbc:mysql://192.168.10.114:33306/ksb";
	String user = "ksb";
	String pass = "1234";
	
	//1단계 - JDBC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	
	//2단계 - 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	//3단계 - SQL 실행객체 생성
	Statement stmt = conn.createStatement();
	
	//4단계 - SQL 실행
	String sql = "SELECT * FROM `USER1`;";
	ResultSet rs = stmt.executeQuery(sql);
	
	//5단계 - 실행결과 처리(Select일 경우)
	List<UserBean> users = new ArrayList<>();
	
	while(rs.next()){
		UserBean ubList = new UserBean();
	
		ub.setUid(rs.getString(1));
		ub.setName(rs.getString(2));
		ub.setHp(rs.getString(3));
		ub.setAge(rs.getInt(4));
		
		ubList.add(ub);
	}
	
	//6단계 - 데이터베이스 종료
		stmt.close();
		conn.close();
		


%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>7_2_Select</title>
	<!-- 
		날짜: 2021/03/25
		이름: 김수빈
		내용:
		
	 -->
</head>
<body>
	<h3>2.JDBC Select 실습</h3>
	
	<table border = "1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>휴대폰</th>
			<th>나이</th>
			<th>수정/삭제</th>
		</tr>
		<% for(UserBean ub : ubList){ %>
			<tr>
				<td><%= ub.getUid() %></td>
				<td><%= ub.getName() %></td>
				<td><%= ub.getHp() %></td>
				<td><%= ub.getAge() %></td>
				<td>
					<a href="#">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
		<% } %>
	
	</table>
	
	
	
	
</body>
</html>