<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Distributing Data Chunks With Minimal Information Leakage Across Multiple Clouds</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%	 
String dpname=request.getParameter("dpname");
String dpmail=request.getParameter("dpmail");
String dpgroup=request.getParameter("dpgroup");
String dppass=request.getParameter("dppass");
Connection con=null;
PreparedStatement pst=null;

try{
Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
	
	 PreparedStatement hs=con.prepareStatement("select count(*) from dataproviders where dpmail='"+dpmail+"' or groupname='"+dpgroup+"' ");
	 int as=0;
	 ResultSet ok=hs.executeQuery();
	 while(ok.next()){
		 as=ok.getInt(1);
	 }
	 if(as>0){
		 response.sendRedirect("adddp.jsp?msg=Your email or Group name already Exists");
	 }
	 else{
	 pst=con.prepareStatement("insert into dataproviders(dpname,dpmail,groupname,dppassword) values(?,?,?,?)");
	
pst.setString(1,dpname);
pst.setString(2,dpmail);
pst.setString(3,dpgroup);
pst.setString(4,dppass);
pst.executeUpdate();
response.sendRedirect("adddp.jsp?msg=Data provider successfully");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
	
%>
</body>
</html>