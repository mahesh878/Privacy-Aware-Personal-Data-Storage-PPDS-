<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>


 <table width="691" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            
			<td  width="180" height="49" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style21 style15 style4 style5"><strong>Attack Name</strong></div></td>
            <td  width="192" height="49" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style21 style15 style4 style5"><strong>Patient Name </strong></div></td>
            <td  width="127" height="49" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style1 style21 style15 style4 style5"><strong> Date and Time </strong></div></td>
            <td  width="179" height="49" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style7 style21 style15 style4 style5 style1"><strong>Url</strong></div></td>
          </tr>

<%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from external"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(1);
								s2=rs.getString(2);
								s3=rs.getString(3);//pn
								s4=rs.getString(4);
							
								
								
							
								
								
								
								
							
						
					%>
          <tr>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style6 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style6 style8">
                  <%out.println(s1);%>
                  <p>&nbsp; </p>
                </div></td>
            
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style6 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style6 style10">
                  <%out.println(s2);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style6 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style6 style12">
                  <%out.println(s3);%>
                  <p>&nbsp; </p>
                </div></td>
            <td height="0"  valign="baseline" bgcolor="#FFFF00"><p class="style6 style4 style22">&nbsp;</p>
                <div align="center" class="style22 style4 style6 style14">
                  <%out.println(s4);%>
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
            <td width="8" height="0"  valign="baseline">&nbsp;</td>
          </tr>
        </table>
