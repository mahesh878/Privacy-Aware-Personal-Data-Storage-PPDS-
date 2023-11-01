<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Attackers</title>
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
.style4 {font-size: 16px}
.style5 {color: #FFFFFF}
.style6 {font-size: 14px}
.style7 {color: #FF0000}
.style9 {font-weight: bold}
.style11 {font-weight: bold}
.style13 {font-weight: bold}
.style14 {font-weight: bold}
.style15 {font-weight: bold}
.style16 {color: #FFFF00}
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
          <li><a href="user_login.jsp"><span>User</span></a></li>
          <li class="active"><a href="cs_login.jsp"><span>Cloud Server</span></a></li>
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
          <h2 align="center" class="style4"> View All Attacker Details [ <a href="cs_chart4.jsp">Click Here to View in Chart</a> ]</h2>
          <p align="center">&nbsp;</p>
          <table width="691" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="31" height="46"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style21 style15 style5 style6"><strong>ID</strong></div></td>
			<td  width="181" height="46" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style16 style6 style21"><strong><strong>Patient Name</strong></strong></div></td>
            <td  width="193" height="46" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style16 style6 style21"><strong><strong>Attacker Name </strong></strong></div></td>
            <td  width="128" height="46" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style16 style6 style21"><strong><strong> Type </strong></strong></div></td>
            <td  width="146" height="46" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style16 style6 style21"><strong><strong>Date</strong></strong></div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from attacker"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);//pn
								s4=rs.getString(4);
								s5=rs.getString(5);
								
								
							
								
								
								
								
							
						
					%>
          <tr>
            <td  valign="baseline" height="0"><p class="style22 style4 style5">&nbsp;</p>
                <div align="center" class="style22 style4 style5">
                  <%out.println(i);%>
                  <p>&nbsp; </p>
                </div></td>
            
            <td  valign="baseline" height="0"><p class="style7 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style7 style9">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style7 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style7 style11">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td  valign="baseline" height="0"><p class="style7 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style7 style13">
                  <%out.println(s4);%>
                  <p>&nbsp; </p>
                </div></td>
			<td  valign="baseline" height="0"><p class="style7 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style7 style15">
                  <%out.println(s5);%>
                  <p>&nbsp; </p>
                </div></td>
          </tr>
          <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          <tr>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
            <td  valign="baseline" height="0">&nbsp;</td>
          </tr>
        </table>
		  
		  <p>&nbsp;</p>
		  <p align="center"><a href="s_main.jsp" class="style14">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Server</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="s_main.jsp"><span> Server Main</span></a></li>
            <li><a href="cs_login.jsp"><span>Log Out</span></a></li>
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
