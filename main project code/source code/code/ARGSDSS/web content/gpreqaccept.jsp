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




Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
PreparedStatement ps=con.prepareStatement("Update groupaccessfiles set ownerstatus='"+request.getParameter("respo")+"' where id='"+request.getParameter("rid")+"'");
ps.executeUpdate();

response.sendRedirect("ownerviewfiles.jsp?msg=Acepted");
%>
</body>
</html>