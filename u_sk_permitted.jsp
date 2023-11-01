<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All SK Permitted Patients</title>
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
	color: #FFFFFF;
	font-weight: bold;
}
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
          <h2 align="center">View All SK Permitted and Download!!!</h2>
          <p align="center">&nbsp;</p>
          
		  
		  <table width="595" height="95" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="107" height="38" valign="middle" bgcolor="#FF0000" ><div align="center" class="style3">Patient Name  </div></td>
			  <td  width="107" height="38" valign="middle" bgcolor="#FF0000" ><div align="center" class="style3">Patient File Name  </div></td>
              <td  width="105" height="38" valign="middle" bgcolor="#FF0000" ><div align="center"> </div></td>
            </tr>
            <%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{
	String user=(String)application.getAttribute("us");
	String str="Permitted";
	
	String query="select pname from au_down_req where username='"+user+"' and per='"+str+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		
		s1=rs.getString(1);//pname
		
		   String query2="select sk,owname,fname from patient_details where pname='"+s1+"' "; 
	       Statement st2=connection.createStatement();
	       ResultSet rs2=st2.executeQuery(query2);
	       if ( rs2.next() )
	       {
		      s2=rs2.getString(1);//on
			  s3=rs2.getString(2);//uploader
			  s4=rs2.getString(3);//fname
			  
			                                    String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String ds4 = new String(Base64.decode(s4.getBytes()));
		   

		%>
            <tr>
              <td  width="50" height="51" valign="middle"><div align="center"><%out.println(s1);%></div></td>
			  <td  width="50" height="51" valign="middle"><div align="center"><%out.println(ds4);%></div></td>
<td align="center"  width="50" height="51" valign="middle"><div align="center"><a href="u_sk_permitted11.jsp?pname=<%=s1%>&fname=<%=ds4%>">Download</a></div></td>
            </tr>
            <%
						}
						}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
		  
		  
          <p align="center"><a href="u_main.jsp" class="style14">Back</a></p>
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
