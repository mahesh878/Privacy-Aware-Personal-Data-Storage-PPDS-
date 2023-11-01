
          
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
		   	try {
		   		String fn = request.getParameter("fname");
				String pn = request.getParameter("pname");
				
				
				    
		   		
				
				

		   		String strQuery = "select cont from patient_details where pname='"+pn+ "' and fname='"+fn+"' ";
		   		ResultSet rs = connection.createStatement().executeQuery(strQuery);
		   	    if (rs.next() == true) 
					{
		   				
		   						
								String ct = rs.getString(1);//content
		  
					        

						
						           
						           
												String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												//String decryptedValue = new String(Base64.decode(ct.getBytes()));
												String file = new String(Base64.decode(fn.getBytes()));
						%>
			
		  </p>
		  <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
          </style>
		  
		  <p align="center" class="style1 style11 style12 style1">Patient File Content(Encrypted)</p>
		  
		  <td> <input type="hidden" id="fn" value="<%=file %>" ></input></td>
		    <label>
          <div align="center">
	            
	              <textarea name="text" id="textarea" cols="45" rows="17"><%=ct%></textarea>
	              <br/>
	              <br/>
	              
		    <p>&nbsp;</p>
			    </div>
		    </label>
		  <p>
		    <%
		    	} 
				
				else {
				      
					  
		               }
					
				
				
				
				 
			
			connection.close();
		} //try close
		catch (Exception e) {
			out.println(e.getMessage());
		}
	%>		  
		  
		  
		  
         