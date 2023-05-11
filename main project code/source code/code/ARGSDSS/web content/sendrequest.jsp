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
PreparedStatement ps=con.prepareStatement("insert into userreques(gfid,dpid,fid,userid)values('"+request.getParameter("gfid")+"','"+request.getParameter("dpid")+"','"+request.getParameter("ofid")+"','"+session.getAttribute("uid")+"')");
ps.executeUpdate();

response.sendRedirect("shfiles.jsp?msg=Request Sent");
%>
</body>
</html>