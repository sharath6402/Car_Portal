<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta http-equiv="refresh" content="30" />
<title>Car Portal</title>
<link rel="stylesheet" href="style.css" > 
<link rel="website icon" type="png" href="./Logo1.png">
</head>
<body>

<%@ include file="header.jsp" %>
	
	<%@ page import="java.sql.*" %>
	<%/*
String password = "Sharath1@";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cardata","root",password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from cardetails");
		while(rs.next())
			System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"   "  );
		
		con.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	*/%>
	
	
	
	<%--about us page --%>
	<%@ include file="about.jsp" %>
	
	
	<jsp:include page="footer.jsp" >
		<jsp:param name="param1" value="value1" />
		<jsp:param name="param2" value="value2" />
	</jsp:include>
</body>
</html>