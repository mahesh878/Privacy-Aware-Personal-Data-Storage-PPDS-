<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style2 {color: #FFFFFF}
-->
</style>
<body>

          <p>
		  
		  <table width="965" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td width="47" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Id</strong></div></td>
    <td width="69" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Patient Name </strong></div></td>
	<td width="106" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Patient Image </strong></div></td>
    <td width="74" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Address</strong></div></td>
    <td width="67" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Date of Birth</strong></div></td>
    <td width="41" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Email</strong></div></td>
	<td width="56" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Mobile</strong></div></td>
	<td width="41" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Age</strong></div></td>
	<td width="62" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Hospital</strong></div></td>
	<td width="59" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Disease</strong></div></td>
	<td width="46" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Blood Group</strong></div></td>
	<td width="81" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Symptoms</strong></div></td>
	<td width="58" bgcolor="#FF0000"><div align="center" class="style2 style6"><strong>Patient File </strong></div></td>
  </tr>

	<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17;
		int i = 0, j = 0, k = 0;
        String user=(String)application.getAttribute("ow");

		try {

			String query = "select * from patient_details where owname='"+user+"' ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				s2 = rs.getString(2);
				s3 = rs.getString(3);
				s4 = rs.getString(4);
				s5 = rs.getString(5);
				s6 = rs.getString(6);
				s7 = rs.getString(7);
				s8 = rs.getString(8);
				s9 = rs.getString(9);
				s10 = rs.getString(10);
				s11 = rs.getString(11);
				s12 = rs.getString(12);
				s13 = rs.getString(13);
				s14 = rs.getString(14);//img
				s15 = rs.getString(15);
				s16 = rs.getString(16);
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   String decrys3 = new String(Base64.decode(s3.getBytes()));
						   String decrys4 = new String(Base64.decode(s4.getBytes()));
						   String decrys5 = new String(Base64.decode(s5.getBytes()));
						   String decrys6 = new String(Base64.decode(s6.getBytes()));
						   String decrys7 = new String(Base64.decode(s7.getBytes()));
						   String decrys8 = new String(Base64.decode(s8.getBytes()));
						   String decrys9 = new String(Base64.decode(s9.getBytes()));
						   String decrys10 = new String(Base64.decode(s10.getBytes()));
						   String decrys11 = new String(Base64.decode(s11.getBytes()));
						   String decrys12= new String(Base64.decode(s12.getBytes()));
						   String decrys13 = new String(Base64.decode(s13.getBytes()));

	%>

	<tr>
		<td height="29">
		<div align="center" class="style8"><%=i%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s2%></div>		</td>
		<td height="80">
		<div align="center" class="style8"><input  name="image" type="image" src="patient_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;"></div> </td>
		<td>
		<div align="center" class="style8"><%=decrys3%></div>		</td>
		<td>
		<div align="center" class="style8"><%=decrys4%></div>		</td>
		<td>
		<div align="center" class="style8"><%=decrys5%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=decrys6%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=decrys7%></div>		</td>
		<td>
		<div align="center" class="style8"><%=decrys8%></div>		</td>
		<td>
		<div align="center" class="style8"><%=decrys9%></div>		</td>
		<td>
		<div align="center" class="style8"><%=decrys10%></div>		</td>
		<td>
		<div align="center" class="style8"><%=decrys11%></div>		</td>
		
		<td>
		<div align="center" class="style8"><a href="ow_view_file.jsp?fname=<%=s12%>&pname=<%=s2%>"><%=decrys12%></a></div>		</td>
	</tr>

	<%
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
</body>
</html>
