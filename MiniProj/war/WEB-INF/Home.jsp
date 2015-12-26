<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdaptiveU</title>

<style type="text/css">
body
{
	
	background:#e6e6e6; 
  	width:      100%;
  	height:     100%; 
  	z-index:    10;
  	top:        0; 
  	left:       0; 
  	position:   fixed;
  	border:5px ridge green;
}

#box
{
	
	height:5%;
	font-size: 20px;
	padding:20px;
	
  
}

</style>
</head>
<body>


<div id="box" style="background:black;color:white">Adaptive<span style="color:aqua">U</span></div>
<div id="box">

<input type="button" onClick="/Full" value="Full"/>
<a href="/Full">FULL</a>
<a href="/Me">ME</a>
<a href="/Challenges">CHALLENGES</a>
<a href="/Peers">PEERS</a>
<a href="/Store">STORE</a>

</div>
<iframe name="Navigtion" width="25%" height="900" src="/Navi"></iframe>
<iframe name="Content" width="72%" height="900" src="/Welcome"></iframe>



</body>
</html>