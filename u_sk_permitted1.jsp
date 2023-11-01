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
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs =document.getElementById("fn").value;

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



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
.style4 {color: #FF0000}
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
          <h2 align="center" class="style3">Download Patient File!!!</h2>
          <p align="center">&nbsp;</p>
          
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
		   	try {
		   		String pn = request.getParameter("t11");
				String fn1 = request.getParameter("t12");
				String sk = request.getParameter("t13");
				String user=(String)application.getAttribute("us");
				
				    SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

					Date now = new Date();

					String strDate = sdfDate.format(now);
					String strTime = sdfTime.format(now);
					String dt = strDate + "   " + strTime;
		   		
				
				

		   		String strQuery = "select * from patient_details where pname='"+pn+ "' and sk='"+sk+"' ";
		   		ResultSet rs = connection.createStatement().executeQuery(strQuery);
		   	    if (rs.next() == true) 
					{
		   				
		   						String fn = rs.getString(12);
								String rank = rs.getString(18);
								String ct = rs.getString(13);//content
		  
					        int updaterank = Integer.parseInt(rank)+ 1;
						
							String strQuery2 = "update patient_details set down_rank='"
														+ updaterank
														+ "' where pname='"
														+ pn + "'";
						
							connection.createStatement().executeUpdate(strQuery2);
							
					
						
					String task="Downloaded";
					String strQuery222 = "insert into transaction(user,f_p_name,task,dt) values('"+user+"','"+fn1+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery222);

						
						           
						           
												String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String decryptedValue = new String(Base64.decode(ct.getBytes()));
												String file = new String(Base64.decode(fn.getBytes()));
						%>
			
		  </p>
		  <p align="center" class="style1 style11 style12 style3">File Content !!! </p>
		  
		  <td> <input type="hidden" id="fn" value="<%=file %>" ></input></td>
		    <label>
	            <div align="center">
	            
	              <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
	              <br/>
	              <br/>
	              <td><button onClick="saveTextAsFile()">Download</button></td>
				  <p><a href="u_sk_permitted.jsp">Back</a></p>
	            </div>
		    </label>
		  <p>
		    <%
		    	} 
				
				else {
				      
					  String task="Wrong Credentials";
				      String strQuery22 = "insert into attacker(user,pname,type,dt) values('"+user+"','"+pn+"','"+task+"','"+dt+"')";
					  connection.createStatement().executeUpdate(strQuery22);
				
				
				
				
    %>
	      </p>
		  <p><h1 class="style1 style10 style4">You Are An Attacker !!!</h1>
		  <h1 class="style1 style10 style4"> ( Entered Wrong Secret Key )</h1>
		  </p><br />
						<p><a href="u_sk_permitted.jsp">Back</a></p>
	<%
		               }
					
				
				
				
				 
			
			connection.close();
		} //try close
		catch (Exception e) {
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
