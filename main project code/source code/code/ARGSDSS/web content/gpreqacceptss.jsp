<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
int randomWithMathRandom = (int) ((Math.random() * (9999- 1000)) + 1000);
System.out.println(randomWithMathRandom);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
PreparedStatement ps=con.prepareStatement("Update userreques set status='Accepted'  where id='"+request.getParameter("rid")+"'");
ps.executeUpdate();
response.sendRedirect("userrequests.jsp?msg=Acepted");
%>
</body>
</html>