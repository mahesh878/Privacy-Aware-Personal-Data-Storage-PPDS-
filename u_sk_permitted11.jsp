<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download Patient File</title>
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
var na3=document.s.t13.value;
if(na3=="")

{
alert("Please Write Secret Key ");
document.s.t13.focus();
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
.style3 {font-size: 20px}
.style4 {color: #0000FF}
.style5 {font-size: 15px}
.style6 {color: #FF0000}
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
          <h2 align="center"><strong>View All SK Permitted and Download</strong>!!!</h2>
          <p align="center">&nbsp;</p>
          
		  
		  <div align="justify" class="style3">
		 


<%
	
	String pn = request.getParameter("pname");
	String fn = request.getParameter("fname");

%>
              <form name="s" action="u_sk_permitted1.jsp" method="post"  onSubmit="return valid()"  ons target="_top">	
			  
            <table width="551" border="1" align="center" cellpadding="10" cellspacing="0" bordercolor="#333333">
              
			  <tr>
                <td width="212" bgcolor="#66FF99"><span class="style1 style13 style14 style5 style16"><span class="style1 style13 style5  style16 style3 style4">Patient  Name :-</span></span></td>
                <td width="293"><span class="style11">
                  <label>
                  <input required name="t11" type="text" value="<%=pn%>" size="40" />
                  </label>
                </span></td>
              </tr>
			  
				<tr>
                <td width="212" bgcolor="#66FF99"><span class="style1 style13 style14 style5 style16"><span class="style1 style13 style5  style16 style3 style4">Patient File Name :-</span></span></td>
                <td width="293"><span class="style11">
                  <label>
                  <input required name="t12" type="text" value="<%=fn%>" size="40" />
                  </label>
                </span></td>
              </tr>
			  
              <tr>
                <td bgcolor="#66FF99"><span class="style1 style14 style13 style5 style16 style3 style4">Secret Key :-</span></td>
                <td><input name="t13" type="text"  size="40" /></td>
              </tr>
              
              <tr>
                <td bgcolor="#66FF99"><div align="right"><span class="style14"><span class="style3"><span class="style4"><span class="style3"></span></span></span></span></div></td>
                <td><span class="style11">
                  <label>
                  <input type="submit" name="Submit2" value="Download" />
                  </label>
                </span></td>
              </tr>
            </table>
          </form>		
			
			

</div>
		  <p align="left">&nbsp;</p>
		  
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
		                    String query111="select sk from patient_details  where pname='"+pn+"' "; 
 			 				Statement st111=connection.createStatement();
							ResultSet rs111=st111.executeQuery(query111);
								if ( rs111.next()==true){
								%>
								
								   Secret key : <span class="style6"><%=rs111.getString(1)%></span>
								
								<%
						                                } 
		  
		  
}

catch(Exception e)
{
out.println(e.getMessage());
}
 %>			  
		  
		  
<p>&nbsp;</p>
		  		         <p align="center"><a href="u_sk_permitted.jsp" class="style14">Back</a></p>
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
