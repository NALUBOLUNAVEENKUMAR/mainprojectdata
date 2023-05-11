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
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability","root","root");
	PreparedStatement st=con.prepareStatement("update upload set fdelete='1' where fid='"+request.getParameter("fid")+"'");
	
	
	st.executeUpdate();
	response.sendRedirect("ownerviewfiles.jsp");
	
	
%>
</body>
</html>