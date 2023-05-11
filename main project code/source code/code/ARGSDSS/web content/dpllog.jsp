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

String email=request.getParameter("email");
String CPASS=request.getParameter("cpass");

System.out.println(email+CPASS);


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
PreparedStatement pst=con.prepareStatement("select count(*),dpid,groupname from dataproviders where dpmail=? and dppassword=?");
pst.setString(1, email);
pst.setString(2, CPASS);
ResultSet rs=pst.executeQuery();
String dpid="";
String dpgroup="";
int chch=0;
while(rs.next()){
	chch=rs.getInt(1);
	dpid=rs.getString(2);
	dpgroup=rs.getString(3);
}
if(chch>0){
	
	session.setAttribute("dpgroup", dpgroup);
	session.setAttribute("dpid", dpid);
	response.sendRedirect("dphome.jsp");
}
else{
	response.sendRedirect("dpl.jsp?msg=Invalid Credentials");
}

%>
</body>
</html>