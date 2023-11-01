<title>Registration authentication</title>

			
			<%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
			<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
			<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>

<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,d=null,image=null,hos=null,blood=null,diss=null,symm=null,agee=null,fname=null,con=null,keys=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String uname=null;     
        			String pass=null;
					String email=null;
					String mno=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String status="Waiting";
					String gender=null;
					String pincode=null;
				
					FileInputStream fs=null;
					File file1 = null;	
					
					try {
					
						
						
						
						
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("pname"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("hn"))
							{
								hos=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bg"))
							{
								blood=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("dis"))
							{
								diss=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("sym"))
							{
								symm=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("age"))
							{
								agee=multi.getParameter(paramname);
							}
									
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("fn"))
							{
								fname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("text"))
							{
								con=multi.getParameter(paramname);
							}
						}
						
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						//String as="0";
						//image = image.replace(".", "_b.");
			 			
				SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		        Statement st22 = connection.createStatement();
		
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA"); 
		    Cipher encoder = Cipher.getInstance("RSA"); 
		    KeyPair kp = kg.generateKeyPair(); 
		    PublicKey pubKey = kp.getPublic(); 
		 
		    // RSA produces 1024 bits Key
		 
		    byte[] pub = pubKey.getEncoded();
		    String pk = pub.toString();
				
				keys="q2e34rrfgfgfgg2a";
      			byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			
				String encaddr = new String(Base64.encode(addr.getBytes()));
				String encdob = new String(Base64.encode(dob.getBytes()));
				String encemail = new String(Base64.encode(email.getBytes()));
				String encmno = new String(Base64.encode(mno.getBytes()));
				String encagee = new String(Base64.encode(agee.getBytes()));
				String enchos = new String(Base64.encode(hos.getBytes()));
				String encdiss = new String(Base64.encode(diss.getBytes()));
				String encblood = new String(Base64.encode(blood.getBytes()));
				String encsymm = new String(Base64.encode(symm.getBytes()));
				String encfname = new String(Base64.encode(fname.getBytes()));
				String enccon = new String(Base64.encode(con.getBytes()));
				
				
				String query1="select * from patient_details where pname='"+uname+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		
								out.println("Patient Name Already Exist");							
							%>
							<p><a href="ow_upload_patient.jsp">Back</a></p>
							<p>         <a href="ow_main.jsp">PDS Owner Main</a> </p>
							<%
					   }
					   else
					   {
		            String user=(String)application.getAttribute("ow");
					String rk="0",rk2="0";
					  
					  PreparedStatement ps=connection.prepareStatement("insert into patient_details(pname,paddress,dob,email,mobile,age,hospital,disease,bg,sym,fname,cont,dt,owname,image,sk,down_rank,search_rank) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,encaddr);
						ps.setString(3,encdob);	
						ps.setString(4,encemail);
						ps.setString(5,encmno);
						ps.setString(6,encagee);
						ps.setString(7,enchos);
						ps.setString(8,encdiss);
						ps.setString(9,encblood);
						ps.setString(10,encsymm);
						ps.setString(11,encfname);
						ps.setString(12,enccon);
						ps.setString(13,dt);
						ps.setString(14,user);
						ps.setBinaryStream(15, (InputStream)fs, (int)(file1.length()));	
						ps.setString(16,pk);
						ps.setString(17,rk);
						ps.setString(18,rk2);
						
						
					   
						
						int x=ps.executeUpdate();
						if(x>0){
								
								
					String task="Uploaded";
					String strQuery222 = "insert into transaction(user,f_p_name,task,dt) values('"+user+"','"+uname+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery222);
								
								
								out.println("Patient Uploaded Sucessfully");							
							
			%>
			<p><a href="ow_upload_patient.jsp">Back</a>   </p>
			<p><a href="ow_main.jsp">PDS Owner Main</a> </p>
			<%
					
						}}
} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
