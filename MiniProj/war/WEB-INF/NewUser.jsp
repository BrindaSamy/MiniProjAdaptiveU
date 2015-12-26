<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="ExternalCss.css"/>



</head>

<body>
	<h1>Register here...</h1>
	
	<form  action="/Login" method="post">
	<table style=";border: 1px solid green;background-color:aqua" align="center">
	<tr>
		<td><label>Name</label></td>
		<td><input type="text" name="userName" placeholder="Your name" required/></td>	
	</tr>
	
	<tr>
		<td><label>Password</label></td>
		<td><input type="password" name="password" placeholder="Password" required/></td>	
	</tr>
	<tr>
		<td><label>Confirm Password</label></td>
		<td><input type="password" name="confirmPassword" placeholder="Retype Password" required></input></td>	
	</tr>
	
	<tr>
		<td><input type="submit" value="Register"/></td>
		<td><input type="reset" value="Clear"/></td>	
	</tr>
	
	</table>
	
	</form>
</body>
</html>