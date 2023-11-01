<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Access Control Permission</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript"> 
function valid()
{
var na3=document.s.qt.value;
if(na3=="-Select-")

{
alert("Please Select Patient Name ");
document.s.qt.focus();
return false;
}
var na33=document.s.tm.value;
if(na33=="-Select-")

{
alert("Please Select Department ");
document.s.tm.focus();
return false;
}
var na333=document.s.cl.value;
if(na333=="-Select-")

{
alert("Please Select Profession ");
document.s.cl.focus();
return false;
}
}      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style2 {font-size: 25px}
.style3 {color: #FF0000}
.style5 {color: #FF0000; font-weight: bold; }
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
          <li class="active"><a href="owner_login.jsp"><span>PDS Owner</span></a></li>
          <li><a href="user_login.jsp"><span>User</span></a></li>
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
          <h2 align="center"><strong> Set Fine-Gained Access Control !!!  </strong></h2>
          <p align="center">&nbsp;</p>
          
		  <form name="s" action="ow_access_control_per1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
		 
		 <table><tr>
		  
          <td bgcolor="#FFFF00"><div align="center"><span class="style5">Select Patient Name
          </span> </div>            <p align="center" class="style3"><strong>
                    <select id="qt" name="qt" style="width:220px;" class="text">
                      <option>-Select-</option>
					  
					  
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
					  
<%
try 
{
    String on=(String)application.getAttribute("ow");
   
    Statement stmt1=connection.createStatement();
	String strQuery1 = "select pname from patient_details where owname='"+on+"'  ";
	ResultSet rs1 = stmt1.executeQuery(strQuery1);
	while(rs1.next())
	{
	  String pn = rs1.getString(1);
	
%>
                  <option> <%=pn%></option>
<%
	}
%>
                    </select>
			      </strong></p>          </td>
            <td bgcolor="#FFFF00">  
				   <div align="center"><span class="style3 style5"><strong>Select Department </strong></span>			      </div>
				   <p align="center" class="style3"><strong>
                    <select id="tm" name="tm" style="width:180px;" class="text">
                      <option>-Select-</option>
					  
                         <option>Cardiology</option>
                         <option>Neurology</option>
                         <option>Nephrology</option>
						 <option>Other</option>
                    </select>
				   </strong></p>            </td>
			  <td bgcolor="#FFFF00">  
				   <div align="center"><span class="style3 style5"><strong> Select Profession </strong></span>			      </div>
				   <p align="center" class="style3"><strong>
                    <select id="cl" name="cl" style="width:180px;" class="text">
                      <option>-Select-</option>
					  
                         <option>Doctor</option>
                         <option>Nurse</option>
						 <option>Surgeon</option>
						 <option>Dentist</option>
				          <option>Insurance_company</option>
						   <option>Other</option>
                    </select>
				   </strong></p>			  </td>
			    
		</tr>
		 <tr>
				   <td></td>
				<td>
                  <p>&nbsp; </p>
                  <p align="center"> <input name="submit" type="submit" class="style5" value=" Set Access Control" /> </p>			    </td>
		 </tr></table> 
          </form>

<%

}

catch(Exception e)
{
out.println(e.getMessage());
}
 
%>
<p align="center"><a href="ow_main.jsp" class="style14">Back</a></p>
		  <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>PDS Owner</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ow_main.jsp"><span>PDS Owner Main</span></a></li>
            <li><a href="owner_login.jsp"><span>Log Out</span></a></li>
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
