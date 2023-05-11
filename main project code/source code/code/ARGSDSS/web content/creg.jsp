<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Distributing Data Chunks With Minimal Information Leakage Across Multiple Clouds</title>
</head>
<body>
<%
String uname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String op=request.getParameter("op");
String ans=request.getParameter("ans");
Connection con=null;
PreparedStatement pst=null; 

try{
Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
	
	 PreparedStatement hs=con.prepareStatement("select count(*) from reg where email='"+email+"'");
	 int as=0;
	 ResultSet ok=hs.executeQuery();
	 while(ok.next()){
		 as=ok.getInt(1);
	 }
	 if(as>0){
		 response.sendRedirect("reg.jsp?msg=Your email already registered");
	 }
	 else{
	 pst=con.prepareStatement("insert into reg(firstname,lastname,password,gender,email,phone,op,ans) values(?,?,?,?,?,?,?,?)");
	
pst.setString(1,uname);
pst.setString(2,lastname);
pst.setString(3,password);
pst.setString(4,gender);
pst.setString(5,email);
pst.setString(6,phone);
pst.setString(7,op);
pst.setString(8,ans);
pst.executeUpdate();
response.sendRedirect("reg.jsp?msg=your registration is completed successfully");
}
}
catch(Exception e)
{
	e.printStackTrace();
}
	
%>
</body>
</html>