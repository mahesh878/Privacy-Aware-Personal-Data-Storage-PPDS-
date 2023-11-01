<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Patient</title>
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


var na3=document.s.pname.value;
if(na3=="")

{
alert("Please Enter Patient Name");
document.s.pname.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na5=document.s.address.value;
if(na5=="")

{
alert("Please Enter Patient Address");
document.s.address.focus();
return false;
}

var na55=document.s.dob.value;
if(na55=="")

{
alert("Please Enter Patient Date of Birth");
document.s.dob.focus();
return false;
}

var na555=document.s.hn.value;
if(na555=="")

{
alert("Please Enter Hospital Name");
document.s.hn.focus();
return false;
}

var dob=document.s.bg.value;
if(dob=="")

{
alert("please Enter Blood Group");
document.s.bg.focus();
return false;
}

var na10=document.s.dis.value;
if(na10=="")

{
alert("Please Enter Patient Disease");
document.s.dis.focus();
return false;
}

var na101=document.s.sym.value;
if(na101=="")

{
alert("Please Write Disease Symptom");
document.s.sym.focus();
return false;
}

var na11=document.s.age.value;
if(na11=="")

{
alert("Please Eneter Age ");
document.s.age.focus();
return false;
}


var na111=document.s.pic.value;
if(na111=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}



var na33=document.s.fn.value;
if(na33=="")

{
alert("Please Enter File Name ");
document.s.fn.focus();
return false;
}

}

function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
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
.style4 {font-weight: bold}
.style11 {font-weight: bold}
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
          <li class="active"><a href="owner_login.jsp"><span>PDS Owner</span></a></li>
          <li><a href="user_login.jsp"><span>User</span></a></li>
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
          <h2 align="center"><strong> Upload Patient Details !!! </strong></h2>
          <p align="center">&nbsp;</p>
		
			
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
					  
					  PreparedStatement ps=connection.prepareStatement("insert into patient_details(pname,paddress,dob,email,mobile,age,hospital,Disease,bg,sym,fname,cont,dt,owname,image,sk,down_rank,search_rank) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
		
		
		
		
%>		  
		  <form name="s" action="ow_upload_patient1.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
            
			<span class="style11">
            <label for="name"> <br />
              <span class="style3">Patient Name (required)<br />
            </span></label>
            </span>
            <p class="style3"><strong>
                <input id="pname" name="pname" value="<%=uname%>" class="text" />
            </strong></p>
                  
                  
				  
				  <span class="style3"><strong>
                  <label for="dob">Disease Name (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="dis" name="dis" value="<%=diss%>" class="text" />
                  </strong></p>
				  
				  
				  
				  
				  
				  
				  
				  
				  
				  <span class="style3"><strong>
                  <label for="dob">File Name (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="fn" name="fn"  class="text" />
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="dob">Content</label>
				  </strong></span><strong>
				  <label for="dob"></label>
				  </strong><span class="style4"><label for="dob"><br />
                  </label>
                  </span>
                  <p class="style4">
                    
					<textarea name="text" cols="50" rows="15" readonly><%= s13 %></textarea>
                  </p>
				  
				  
				  
  
                  <p>&nbsp; </p>
                  <p>
                    <input name="submit" type="submit" value="Upload" />
                  </p>
          </form>
          
		  
		  
          <p>&nbsp;</p>
		  		         <p align="center"><a href="ow_main.jsp" class="style14">Back</a></p>
		  <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>PDS Owner</span> Menu</h2>
          <ul class="sb_menu">
            <li><a href="ow_main.jsp"><span>PDS Owner Main</span></a></li>
            <li><a href="owner_login.jsp"><span>Log Out</span></a></li>
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
