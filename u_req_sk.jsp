<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SK Request/Response</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style8 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style2">Privacy-aware Personal Data Storage P-PDS Learning how to Protect User Privacy from External Applications</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="owner_login.jsp"><span>PDS Owner</span></a></li>
          <li class="active"><a href="user_login.jsp"><span>User</span></a></li>
          <li><a href="cs_login.jsp"><span>Cloud Server</span></a></li>
          <li><a href="au_login.jsp"><span>Authority</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">Request / View Request Key </h2>
          <p align="center">&nbsp;</p>
          
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            <span class="style3">
            <%
try 
{
    String user=(String)application.getAttribute("us");
	String pn=request.getParameter("pname");
	String fn=request.getParameter("fname");
   
    String query11="select * from au_down_req  where pname='"+pn+"' and username='"+user+"' and per='Permitted' "; 
	Statement st11=connection.createStatement();
	ResultSet rs11=st11.executeQuery(query11);
	if ( rs11.next()==true){
	                   %>
                          Download Permission is Already Given For This Patient :  <%=pn%></span> 
            </p>
          
            <span class="style3">
            <%
						    String query111="select sk from patient_details  where pname='"+pn+"' "; 
 			 				Statement st111=connection.createStatement();
							ResultSet rs111=st111.executeQuery(query111);
								if ( rs111.next()==true){
								%>
								Secret key : </span><span class="style8"><%=rs111.getString(1)%></span>
								
								<p>&nbsp;</p>
          <p align="center"><a href="u_view_pat_details.jsp?pname=<%=pn%>" class="style14">Back</a></p>
								<%
						                                }
						 
                           }
						   else{
	  
    String query12="select * from au_down_req  where pname='"+pn+"' and username='"+user+"' and per='Requested' "; 
	Statement st12=connection.createStatement();
	ResultSet rs12=st11.executeQuery(query12);
	if ( rs12.next()==true){
	                   %>
								<span class="style3">          Secret Key Request has Sent Already For This Patient : <%=pn%></span>
		  </p>
          <p class="style3">
						  Wait for Authority Permission
						  <p class="style3">&nbsp;</p>
          <p align="center" class="style3"><a href="u_view_pat_details.jsp?pname=<%=pn%>" class="style14">Back</a></p>
                         <span class="style3">
                         <%
                           }
						   
	else{
	                String query4="insert into au_down_req (username,pname,per,dt,fname) values('"+user+"','"+pn+"','Requested','Null','"+fn+"')";
					connection.createStatement().executeUpdate(query4); 
					%>
                         </p>
                         </span>
          <p class="style30 style3"> Request Sent Successfully !!! </p>
		  
		  <p>&nbsp;</p>
          <p align="center"><a href="u_view_pat_details.jsp?pname=<%=pn%>" class="style14">Back</a></p>
                    <%
	
	
	    }	  
	}  
	
}

catch(Exception e)
{
out.println(e.getMessage());
}
 %>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="user_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
