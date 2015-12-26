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
  	 <link type="text/css" rel="stylesheet" href="css/Welcome.css">

<title>Insert title here</title>

</head>
<body class="weocome-holder">

	<div class="navbar navbar-inverse" style="background:black;color:white;padding:20px;font-size:24px">
	
		Adaptive<span style="color:aqua">U</span>
		<p align="right" color="#00a5b4" font-family="museo">Welcome...<%=session.getAttribute("disp")%>!!!<p>
		
	
	<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
		
		
		</button>
	
	<div class="collapse navbar-collapse navHeaderCollapse" id="full">
			<ul class="nav navbar-nav">
								<li><a href="/Explore">Full</a></li>
        						<li class="active"><a href="/Welcome">Me</a></li>
        						<li><a href="/Challenges" >Challenges</a></li>
        						<li><a href="/Peers" onclick="return false">Peers</a></li>
        						<li><a href="/Store" onclick="return false">Store</a></li>
				
				
			</ul>
	</div>
</div>

<div class="container-fluid" >
	
	
	<div id="sidebar">
  		Hai user..
  	</div>
	
	
	<div id="content">
		
	</div>
  	

</div>	


	
 
		
		
	
	
	
	
	
	

</body>
</html>