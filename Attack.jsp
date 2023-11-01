<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %> 
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%

    try
		{
			String username=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			String pname=(String)application.getAttribute("pname");
			String aname="External Attack";
			
			 String aurl=String.valueOf(request.getRequestURL());
			 
			 
			 
		 				   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
	
						   Date now = new Date();
	
						   String strDate = sdfDate.format(now);
						   String strTime = sdfTime.format(now);
						   String date = strDate + "   " + strTime;
			 
			
			String sql="SELECT * FROM external where aurl='"+aurl+"' and pname='"+pname+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{
		
		
				%>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<br/>
									<p class="style1">External Attack is Resisted!! </p>
									<br/><br/><a href="index.html">Home</a>
									<%
								
								
					}
					else
					{
					
					
			
			
			String sql1="insert into external (aname,pname,dt,aurl)values('"+aname+"','"+pname+"','"+date+"','"+aurl+"') ";
								Statement stmt1 = connection.createStatement();
								stmt1.executeUpdate(sql1); %>
					
					
					<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

<br/>
									<p class="style1">External User Attacked Successfull!! </p>
									<br/><br/><a href="index.html">Home</a>
									<%
								
			
			
								 }
					
					
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>