<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View SK Request/Response</title>
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
.style3 {color: #FFFFFF}
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
          <h2 align="center">View All Your SK Request and Response</h2>
          <p>&nbsp;</p>
		  
		  <table width="622" border="1.5" cellpadding="0" cellspacing="0" align="center">
                    <tr bgcolor="#00FF33">
                      <td width="59" height="30" bgcolor="#FF0000"><div align="center" class="style7 style20 style26 style21 style3"><strong> ID </strong></div></td>
                      
                      <td width="161" bgcolor="#FF0000"><div align="center" class="style7 style20 style27 style3"><strong><span class="style28">Patient Name </span></strong></div></td>
                      <td width="141" bgcolor="#FF0000"><div align="center" class="style7 style20 style27 style3"><strong> Date </strong></div></td>
                      <td width="156" bgcolor="#FF0000"><div align="center" class="style7 style20 style27 style3"><strong>View/Permit</strong></div></td>

<%@ include file="connect.jsp" %>                      
					 
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
	String user=(String)application.getAttribute("us");

 try 
	{		
      	   String query="select * from au_down_req where username='"+user+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);//user
		s3=rs.getString(3);//fname
		s4=rs.getString(4);//permission
		s5=rs.getString(5);//dt
		
		
		%>
                    </tr>
                    <tr>
                      <td height="53"><div align="center"><%=i%></div></td>
                      
                      <td><div align="center"><%=s3%></div></td>
					  <td><div align="center"><%=s5%></div></td>
                      <%	
			if(s4.equalsIgnoreCase("Requested"))
			{
			
		%>
                      <td><div>
                          <div align="center"><a href="au_download_permit.jsp?usid=<%=i%>" class="style6">Permit</a></div>
                      </div></td>
                      <%
		
			}
			else if(s4.equalsIgnoreCase("No"))
			{
			
		%>
                      <td><div>
                          <div align="center">Not Requested</div>
                      </div></td>
                      <%
		
			}
			else
			{
		%>
                      <td width="22"><div>
                          <div align="center"><%=s4%></div>
                      </div></td>
                    </tr>
                    <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
		  
		  
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
