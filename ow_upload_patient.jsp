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
.style11 {font-weight: bold}
.style14 {font-weight: bold}
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
          <h2 align="center"> Upload Patient Details !!! </h2>
          <p align="center">&nbsp;</p>
		  
		  <form name="s" action="ow_upload_patient1.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
            
			<span class="style11">
            <label for="name"> <br />
              <span class="style3">Patient Name (required)<br />
            </span></label>
            </span>
            <p class="style3"><strong>
                <input id="pname" name="pname" class="text" />
            </strong></p>
                  
                  <span class="style3"><strong>
                  <label for="email">Email Id (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="email" name="email" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="mobile">Mobile Number (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="mobile" name="mobile" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="address">Patient Address<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <textarea name="address" cols="50" id="address"></textarea>
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="dob">Date of Birth (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="dob" name="dob" class="text" />
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="dob">Hospital Name (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="hn" name="hn" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="dob">Blood Group (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="bg" name="bg" class="text" />
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="dob">Disease Name (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="dis" name="dis" class="text" />
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="address">Disease Symptom<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <textarea name="sym" cols="50" id="sym"></textarea>
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="dob">Age (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="age" name="age" class="text" />
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="pic">Select Patient Picture (required)</label>
                  </strong></span>
                  <span class="style3">
                  <label for="pic"></label>
                  </span>
                  <strong>
                  <label for="pic"></label>
                  </strong>
                  <label for="pic"><br />
                  </label>
                  <p>
                    <input type="file" id="pic" name="pic" class="text" />
                  </p>
				  
				  
				  
				  
				  
  
                  <p>&nbsp; </p>
                  <p>
                    <input name="submit" type="submit" value="Upload" />
                  </p>
          </form>
          
		  
		  
          <p>&nbsp;</p>
		  		         <p align="center"><a href="ow_main.jsp" class="style14">Back</a></p>
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
