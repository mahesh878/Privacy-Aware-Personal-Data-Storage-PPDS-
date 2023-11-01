<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Reister</title>
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


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}

var na9=document.s.dept.value;
if(na9=="--Select--")

{
alert("Please Select Your Department");
document.s.dept.focus();
return false;
}

var na99=document.s.spec.value;
if(na99=="--Select--")

{
alert("Please Select Your Specialist");
document.s.spec.focus();
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
alert("Please Enter Your address");
document.s.address.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}

var na9=document.s.gender.value;
if(na9=="--Select--")

{
alert("Please Enter Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.pincode.value;
if(na10=="")

{
alert("please Enter Your Pincode");
document.s.pincode.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("Please Select Picture");
document.s.pic.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 20px;
	color: #33FF99;
}
.style2 {font-size: 25px}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
.style4 {font-weight: bold}
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
          <h2 align="center">  User Registration </h2>
		  
		  <form name="s" action="u_RegIns.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top"> 
		  
                  <label for="name">
                  <span class="style4"><img src="images/Register.jpg" width="343" height="112" /><br />
                  <br />
                  <span class="style3">User Name (required)<br />
                  </span></span></label>
                  <p class="style3"><strong>
                  <input id="name" name="userid" class="text" />
                  </strong></p>
				  
                  <span class="style3">
                  <label for="password">
				  Password (required)<br />
                  </label>
                  </span>
                  <p class="style3"><strong>
                  <input type="password" id="password" name="pass" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="gender"> Department (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <select id="s1" name="dept" class="text" style="width:170px;">
                    <option>--Select--</option>
                       <option>Cardiology</option>
                       <option>Neurology</option>
                       <option>Nephrology</option>
					   <option>Other</option>
                  </select>
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="gender"> Profession   (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <select id="s1" name="spec" class="text" style="width:170px;">
                    <option>--Select--</option>
                       <option>Doctor</option>
                       <option>Nurse</option>
					   <option>Surgeon</option>
					   <option>Dentist</option>
					   <option>Insurance_company</option>
					     <option>Other</option>
                  </select>
                  </strong></p>
				  
				  <span class="style3"><strong>
                  <label for="email">Email Address (required)<br />
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
                  <label for="address">Your Address<br />
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
                  <label for="gender">Select Gender (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <select id="s1" name="gender" class="text">
                    <option>-Select-</option>
                    <option>Male</option>
                    <option>Female</option>
                  </select>
                  </strong></p>
                  <span class="style3"><strong>
                  <label for="pincode">Enter Pincode (required)<br />
                  </label>
                  </strong></span>
                  <p class="style3"><strong>
                  <input id="pincode" name="pincode" class="text" />
                  </strong></p>
				  
                  <span class="style3"><strong>
                  <label for="pic">Select Profile Picture (required)</label>
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
				  
                  <p>
                    <input name="submit" type="submit" value="REGISTER" />
                  </p>
                  <p align="right"><a href="user_login.jsp">Back</a></p>
          </form>
		  
		  
          </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html"><span>Home Page</span></a></li>
            <li><a href="owner_login.jsp"><span>PDS Owner</span></a></li>
            <li><a href="user_login.jsp"><span>User</span></a></li>
            <li><a href="cs_login.jsp"><span>Cloud Server</span></a></li>
            <li><a href="au_login.jsp"><span>Authority</span></a></li>
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
