<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String email=request.getParameter("email");
String CPASS=request.getParameter("cpass");

System.out.println(email+CPASS);

if(email.equals("gm@gmail.com")&&CPASS.equals("gm")){
response.sendRedirect("gmhome.jsp");
System.out.println("login Success");
	
}
else{
	response.sendRedirect("gml.jsp");
	System.out.println("login Failed");
}

%>

</body>
</html>