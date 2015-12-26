<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="js/jquery.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  
  <link type="text/css" rel="stylesheet" href="css/Univ.css">
   <link type="text/css" rel="stylesheet" href="css/Full.css">


<title>University</title>
</head>
<body class="univ-holder">

	

	<div id="Wrap" class="header-wrap">
	
		<div class="navbar-header" id="full">
		<a class="navbar-brand" href="" style="font-size:24px;font-family:museo" >Adaptive<span style="color:aqua;font-family:museo">U</span></a>
		<p align="right" color="#00a5b4" font-family="museo">Welcome...<%=session.getAttribute("disp")%>!!!<p>
		
	</div>
	
	<br>
	<br>
	
	<div class="univ" id="univ-cont" width="100%">
	
		<h1 align="center" style="font-size:36px;font-weight:300;color:#5e6d82;font-family:museo">Explore University!</h1><br>
		<a href="/Welcome" class="badge" onclick="retun false">
			<img alt="" src="images/full.png" id="full-img">
		</a>
	
	</div>
</div>
		

	
		
</body>
</html>