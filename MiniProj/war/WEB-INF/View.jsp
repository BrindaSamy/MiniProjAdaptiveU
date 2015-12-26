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

<link type="text/css" rel="stylesheet" href="css/Univ.css">
<link type="text/css" rel="stylesheet" href="css/Full.css">
<link type="text/css" rel="stylesheet" href="css/Welcome.css">

<title>Insert title here</title>


<body class="weocome-holder">

	<div class="navbar navbar-inverse"
		style="background: black; color: white; padding: 20px; font-size: 24px">

		Adaptive<span style="color: aqua">U</span>


		<button class="navbar-toggle" data-toggle="collapse"
			data-target=".navHeaderCollapse">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>


		</button>

		<div class="collapse navbar-collapse navHeaderCollapse" id="full">
			<ul class="nav navbar-nav">
				<li><a href="/Explore">Full</a></li>
				<li><a href="/Welcome"> Me</a></li>
				<li><a href="/Challenges">Challenges</a></li>
				<li><a href="/Peers">Peers</a></li>
				<li><a href="/Store">Store</a></li>
			</ul>
		</div>
	</div>

	<div class="container-fluid">

         <!-- Content bar inner div1 -->
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
				onclick="showCreation()">Create Challenges</button>
				
			   <button type="button" id="btn1" class="btn btn-default"
				onclick="showUpdation()">View Challenges</button><br>
				
				<button type="button" id="btn1" class="btn btn-default"
				onclick="showDeletion()">Delete Challenges</button>
				
				-->	
				<ul class="nav navbar-nav">
				
					<li><a href="/Challenges"><button type="button" id="btn1" class="btn btn-link"
				onclick="showCreation()">Create Challenges</button></a></li> <br>
				
					<li><a href="/ViewChallenges" onclick="return false">View/Update
						Challenges</a></li>

					<li><a href="/RemoveChallenges">Remove
						Challenges</a></li>
			</ul>
			</div>
			<!-- Content bar..inner div 2 -->
	<div class="container" id="content">
  <h2>Ur Challenges.</h2>
 
           
  <table class="table">
    <thead class="danger">
      <tr>
      <th>Challenge_ID</th>
        <th>Title</th>
        <th>Points</th>
        <th>Creator</th>
      </tr>
    </thead>
    <%
  
  //out.println( request.getAttribute("List"));
    Challenges chall = new Challenges();
  List<Entity> challenges = (List<Entity>)request.getAttribute("List");
  if(challenges!=null){
  for(Entity e : challenges)
  {
  %> 
    <tbody>
     
      <tr class="info">
      	<td><%=e.getProperty("cha_ID") %></td>
        <td><%=e.getProperty("title") %></td>
        <td><%=e.getProperty("badges") %></td>
        <td><%=e.getProperty("creator") %></td>
      </tr>
      <%
			}
  }
  else
  {
	  out.println("");
  }
		%>
    </tbody>
  </table>
	</div>
	
	</div>
				