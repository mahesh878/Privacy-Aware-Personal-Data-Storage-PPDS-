<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Search Patient</title>
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
.style3 {color: #FF0000}
.style5 {font-weight: bold}
.style6 {color: #FF0000; font-weight: bold; }
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
          <h2 align="center"> Search Patient </h2>
          <p align="center">&nbsp;</p>
          
<form name="s" action="u_search_patient.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174" bgcolor="#FFFF00"><div align="center" class="header">
                        <div align="right" class="style12">
                          <div align="center" class="style3">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2">
                      </div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
</form>
		
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
								String s1="",keyword="",s2="",s3="",s4,s5="",s6="";
								String strDate="",strTime="",dt="";
								int rank=0,i=0;
								
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
								String user=(String)application.getAttribute("us");
								String deptt=(String)application.getAttribute("dept");
								String proff=(String)application.getAttribute("prof");


									
								String sql2="select * from patient_details";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql2);
								while(rs2.next())
										{
									
									       s2 = rs2.getString(2).toLowerCase();
										   s3 = rs2.getString(9);//enc_dis
										   s4 = rs2.getString(12);//enc_fn
										   s5 = rs2.getString(13);//enc_cont
										   
										   
						                        String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						                        String decryptedValues3 = new String(Base64.decode(s3.getBytes())).toLowerCase();//dis
												String decryptedValues5 = new String(Base64.decode(s5.getBytes())).toLowerCase();//cont
												String ds4 = new String(Base64.decode(s4.getBytes())).toLowerCase();//fn
									   
					
										if ((decryptedValues3.contains(keyword)) || (decryptedValues5.contains(keyword)) || (s2.contains(keyword)) )
										{
										
									%>
                </P>
 </p>
              
               <p> 
               <div align="center" class="style3 style11"><strong>Patient Name : <span class="style15"> <%=s2%></span></strong></div>
               <span class="style6"><br />
               </span>
               <div align="center" class="style3 style11"><strong>Disease Name :  <span class="style15"> <%=decryptedValues3%></span></strong></div>
               </p>
                <p>
            <div align="center" class="style5 style14"><span class="style11">  <a href="u_view_pat_details.jsp?pname=<%=s2%>&fname=<%=ds4%>">View Details </a></span></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	              }
							           }
						 
						
					}
					
					catch(Exception e)
					{						  
					    e.printStackTrace();
						//out.println(e.getMessage());
					}
					%> 		  
		  
		  
		  
		  
		  
		  
		  
          <p>&nbsp;</p>
		  		         <p align="center"><a href="u_main.jsp" class="style14">Back</a></p>
		  <p>&nbsp;</p>
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
