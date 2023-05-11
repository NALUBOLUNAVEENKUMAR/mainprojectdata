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

	  <%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
	  
	  
<%@page import="java.util.Random" %>
 <%
String s1=request.getParameter("email");
String s2=request.getParameter("cpass");
System.out.println(s1);
System.out.println(s2);
Connection con=null;
String sql="select count(*),id from oreg where email='"+s1+"' and password='"+s2+"'";
System.out.println(sql);
PreparedStatement pst=null;
try{	
Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
		 pst=con.prepareStatement(sql);	


	ResultSet rs=pst.executeQuery();
	int a=0;
	String Userid="";
while(rs.next())
{
	System.out.println(s1+"===============000000000000000000");

	session.setAttribute("email", s1);
	Userid=rs.getString(2);
	session.setAttribute("un", Userid);
	
a=rs.getInt(1);
}
if(a==1){
    Random rand = new Random(); 

    int ram = rand.nextInt(10000); 

	session.setAttribute("otp", ram);
	System.out.println(ram);
	session.setAttribute("email", s1);
	
	System.out.println(session.getAttribute("mail")+"=============================0000");
	
	
	
	PreparedStatement  pst2=con.prepareStatement("update oreg set otp='"+ram+"' where email='"+s1+"' and password='"+s2+"'" );
	pst2.executeUpdate();
	
	
	
	  
/* 

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="januram513@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="janakiram"; //Your gmail password
String mesg="Your OTP was : "+ram+"";

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =s1; // out going email id

String from ="januram513@gmail.com"; //Email id of the recipient
String subject="Your OTP ";
//String subject ="welcome";



session.setAttribute("mail",s1);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
//msg.setContent(messageText, "text/html"); // use setText if you want to send text
msg.setContent(mesg, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass); */
try {
//transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent
response.sendRedirect("OLogin32.jsp?raji=1");	
}
catch (Exception err) {

out.println("Request Not Accepted"); // assume it’s a fail
}
//transport.close();

	
	
	
	
	
	
	
	
	  }
     else
     {
		
		response.sendRedirect("OLogin32.jsp?raji=0&&msg=Invalid credentials. Please try again");
		
     }
	}
	catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>