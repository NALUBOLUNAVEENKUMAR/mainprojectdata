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
<%@page import="java.io.*"%>
<%@page import="java.util.zip.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.zip.*"%>
<%@page import="java.io.File"%>
<%@page	import="java.io.FileInputStream"%>
<%@page	import="java.io.FileNotFoundException"%>
<%@page	import="java.io.FileOutputStream"%>
<%@page	import="java.io.IOException"%>
<%@page	import="java.io.InputStream"%>
<%@page	import="java.security.Key"%>
<%@page	import="java.security.NoSuchAlgorithmException"%>
<%@page	import="javax.crypto.Cipher"%>
<%@page	import="javax.crypto.KeyGenerator"%>
<%@page import="first.*"%>     
<%@page import="java.util.*"%>   
<%@page import="java.time.*"%>   
<%@page import="java.io.IOException"%>   
<%@page import="java.io.InputStream"%>   
<%@page import="java.io.OutputStream"%>   
<%@page import="java.security.InvalidAlgorithmParameterException"%>   
<%@page import="java.security.InvalidKeyException"%>  
<%@page import="java.security.NoSuchAlgorithmException"%>  
<%@page import="java.security.spec.AlgorithmParameterSpec"%>  
<%@page import="javax.crypto.*"%>   
<%@page import="javax.crypto.Cipher"%>   
<%@page import="javax.crypto.CipherInputStream"%>   
<%@page import="javax.crypto.CipherOutputStream"%>   
<%@page import="javax.crypto.KeyGenerator"%>   
<%@page import="javax.crypto.NoSuchPaddingException"%>   
<%@page import="javax.crypto.SecretKey"%>  
<%@page import="javax.crypto.spec.IvParameterSpec"%> 
<%@page import="javax.crypto.spec.*"%> 



<%



	
String encfilename="";
String sql="";
String s11=(String)session.getAttribute("un").toString();
System.out.println(s11); 
String s1 = request.getParameter("fname");
System.out.println(s1);
String file = request.getParameter("file");
System.out.println(file);
String email = session.getAttribute("email").toString();

String ownerkey = request.getParameter("ownerkey");

int cnt=0;


/* ======================= encryption key ==============================  */
KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
		keyGenerator.init(256);

		SecretKey secretKey = KeyGenerator.getInstance("AES").generateKey();

		String encodedKey = Base64.getEncoder().encodeToString(secretKey.getEncoded());

		System.out.println("secretKey==== " + secretKey);

		System.out.println("encodedKey==== " + encodedKey);

		byte[] decodedKey = Base64.getDecoder().decode(encodedKey);
		
		SecretKey originalKey = new SecretKeySpec(decodedKey, 0, decodedKey.length, "AES");

		System.out.println("originalKey==== " + originalKey);

		/* ======================= encryption key ==============================  */

				
File f = new File("C:/users/DivyaPrathap/Desktop/" + file);
		
		
InputStream is = null;
try {
	is = new FileInputStream(f);
} catch (FileNotFoundException e2) {

	e2.printStackTrace();
}
byte[] content = null;
try {
	content = new byte[is.available()];
} catch (IOException e1) {

	e1.printStackTrace();
}
try {
	is.read(content);
} catch (IOException e) {

	e.printStackTrace();
}

System.out.println(content);


Cipher cipher;
byte[] encrypted = null;
try {
	cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
	cipher.init(Cipher.ENCRYPT_MODE, secretKey);
	encrypted = cipher.doFinal(content);
} catch (Exception e) {
	e.printStackTrace();
}

System.out.println(encrypted);

Clock clock = Clock.systemDefaultZone();
long milliSeconds=clock.millis();
System.out.println(milliSeconds);

encfilename=milliSeconds+file.replace(".", "")+".jpg";
try {
	FileOutputStream fos = new FileOutputStream("D://December2021//ARGSDSS//WebContent//encfiles//"+encfilename);
	
	fos.write(encrypted);
	fos.close();
} catch (Exception e) {
	e.printStackTrace();
}


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/areliability", "root", "root");
sql="insert into upload(fname,actualfname,encryptedfilename,skeygenerated,uid,hashvalue) values('"+s1+"','"+file+"','"+encfilename+"','"+encodedKey+"','"+s11+"',md5('"+ownerkey+"'))";	

PreparedStatement ps=con.prepareStatement(sql);
ps.executeUpdate();



response.sendRedirect("ownerupload.jsp?msg=Uploaded Successful");			

%>
