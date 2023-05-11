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
PreparedStatement ps=con.prepareStatement("insert into groupaccessfiles(dpid,fileid,foid,groupname,verfication) value('"+session.getAttribute("dpid")+"','"+request.getParameter("fid")+"','"+request.getParameter("foid")+"','"+session.getAttribute("dpgroup")+"','Verified')");
ps.executeUpdate();

response.sendRedirect("ownerfiles.jsp?msg=verfied");
%>
</body>
</html>