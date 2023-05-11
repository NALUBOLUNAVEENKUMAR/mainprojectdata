<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
String s1=request.getParameter("email");
String s2=request.getParameter("otp");					
Connection con=null;
PreparedStatement pst=null;
try{	
Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
		 pst=con.prepareStatement("select * from oreg where email=? and otp=?");	
pst.setString(1,s1);
pst.setString(2,s2);
	ResultSet rs=pst.executeQuery();	
if(rs.next()){
	  	session.setAttribute("oid", rs.getString("id"));
	  	System.out.println(session.getAttribute("oid"));
	  response.sendRedirect("ohome.jsp?msg=login successfully");	
	  }
     else
     {
		
		response.sendRedirect("OLogin32.jsp?raji=0&msg=Invalid credentials. Please try again");
		
     }
	}
	catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>