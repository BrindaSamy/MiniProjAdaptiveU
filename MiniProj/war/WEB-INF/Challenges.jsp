<%@page import="org.apache.jasper.compiler.Node.GetProperty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.List" %>
	<%@ page import="com.example.miniproj.Challenges" %>
	
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/challenge.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="css/Univ.css">
<link type="text/css" rel="stylesheet" href="css/Full.css">
<link type="text/css" rel="stylesheet" href="css/Welcome.css">

<title>Insert title here</title>

<script src="js/challenge.js"></script>
 <script type="text/javascript"> 


function showCreation() {
	document.getElementById('create').style.display = "block";
	document.getElementById('delete').style.display = "none";
	document.getElementById('view').style.display = "none";

	}
	
	
/*    
 $(document).ready(function(){
    	
    	$('#create').hide();
    		
    	
    }); */
    </script>






</head>
<body class="weocome-holder">

	<div class="navbar navbar-inverse"
		style="background: black; color: white; padding: 20px; font-size: 24px">

		Adaptive<span style="color: aqua">U</span>
		<p align="right" color="#00a5b4" font-family="museo">Welcome...<%=session.getAttribute("disp")%>!!!<p>


		<button class="navbar-toggle" data-toggle="collapse"
			data-target=".navHeaderCollapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>


		</button>

		<div class="collapse navbar-collapse navHeaderCollapse" id="full">
			<ul class="nav navbar-nav">
				<li><a href="/Explore">Full</a></li>
				<li><a href="/Welcome"> Me</a></li>
				<li><a href="/Challenges" onclick="return false">Challenges</a></li>
				<li><a href="/Peers">Peers</a></li>
				<li><a href="/Store">Store</a></li>
			</ul>
		</div>
	</div>

	<div class="container-fluid">


		<div id="sidebar">




			<br>
			<br>
			<!-- -------------search form and buttons-------------------------- -->
			<form class="navbar-form navbar-left" role="search" action="/searchChallenges">
				<div class="form-group">
					<input type="text" class="form-control"
						placeholder="Find a Challenge...!" name="chalName">
				</div>
				<button type="submit" class="btn btn-default">Search</button>
			</form>

			
		
			<!-- 	
			   <button type="button" id="btn1" class="btn btn-default"
				onclick="window.navigate('/view')">View Challenges</button><br>
				
				<button type="button" id="btn1" class="btn btn-default"
				onclick="showDeletion()">Delete Challenges</button>
				
			</ul> -->	
				

			<ul class="nav navbar-nav">
				
				<li><a><button type="button" id="btn1" class="btn btn-link"
				onclick="showCreation()">Create Challenges</button></a></li> <br>
			
				<li><a href="/ViewChallenges" >View/Update
						Challenges</a></li><br>

				<li><a href="/RemoveChallenges" onclick="showRemoval()">Remove
						Challenges</a></li><br>
			</ul>
		</div>

<!-- *********Content ******** -->

	<div id="content" name="chal-cont">



	<!-- -------------create form -------------------------- -->
	
	
	
	<div class="container" id="create"style="display:none">
  <h2>Create Challenges..!!!</h2>
  <form class="form-horizontal" role="form" action="/store" onsubmit="return check()">
  
  	<div class="form-group">
      <label class="control-label col-sm-2" for="cha_ID">Challenge_ID:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cha_ID" name="challenge_ID" placeholder="Enter Challenge ID" ><p id="IdErr"></p>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="tile">Title:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title" ><p id="TitErr"></p>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="badge">Badges:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="badge" name="badges" placeholder="Number of Badges" /><p id="BadErr"></p>
      </div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="creator">Created By:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="creator" name="creator" placeholder="Enter your Name" /><p id="CreErr"></p>
      </div>
    </div>
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" id="save">Add to Challenges</button>
      </div>
    </div>
  </form>
</div>
			
	</div>



</div>

	
	










</body>
</html>