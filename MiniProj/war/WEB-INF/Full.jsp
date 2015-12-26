<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="width=device-width initial-scale=1.0" charset="UTF-8" name="viewport" >
<title>Insert title here</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
 <link type="text/css" rel="stylesheet" href="css/Full.css">
  
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  
   <script src="js/signup.js" type="text/javascript">
   </script>

<style type="text/css">


  
   
  
</style>

</head>
<body>
  
<div class="navbar navbar-fixed-top navbar-default" id="full">

	<div class="container-fluid">
		<a href="" class="navbar-brand"><img src="images/newu_logo.png"/></a>
		
		<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
		
		
		</button>
		
		<div class="collapse navbar-collapse navHeaderCollapse">
			<ul class="nav navbar-nav">
			<li><a href="#">Features</a></li>
        		<li><a href="#">ContactUs</a></li>	
				
				
			</ul>
		
		
		<div class="collapse navbar-collapse navHeaderCollapse">
			<ul class="nav navbar-nav navbar-right" id="full-log">
				
				<li><a href="#" data-toggle="modal" data-target="#login">Login</a></li>
        		<li><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#signup">SignUp</button></li>	
				
			</ul>
		</div></div>
		
	</div>

</div>


	<!-- 
<nav navbar navbar-default>
<div id="Wrap" class="header-wrap">
	
		<div class="navbar-header" id="full">
	 
     		 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="/full" aria-expanded="false">
        			<span class="sr-only">Toggle navigation</span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
       			    <span class="icon-bar"></span>
      		</button>
 
        				<a class="navbar-brand" href="/" style="font-size:24px;" >Adaptive<span style="color:aqua">U</span></a>
      		<button class="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
		
		
		</button>
    	
    	
    			<div class="collapse navbar-collapse" id="full">
      				<ul class="nav navbar-nav">
        						
        						<li><a href="#">Features</a></li>
        						<li><a href="#">ContactUs</a></li>
        			</ul>
        			
        			<div class="nav navbar-right">
						<ul class="nav navbar-nav" id="full-log">
								<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#login">Login</button>
    							<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#signup">SignUp</button>
    					</ul>
					</div>
       			</div>
		</div>	
</div>
</nav>	
   -->

<div class="jumbotron"></div>
<div class="banner">
	<h1 align="center">An Adaptive LMS for all your needs</h1>
	<h3 align="center">A simple and easy LMS to train your employees, customers or students </h3><br><br>
	
	<img src="banner.png" height="" width=""></img>
	
</div>




<div class="container">
  <h2></h2>
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="signup" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" id="signup-head">
 
          <button type="button" class="close" data-dismiss="modal"></button>
          <h4 class="modal-title" align="center" >SignUp Here..</h4>
        </div>
        <div class="modal-body">
          	<form   align="center" name="frmSignup" action='/add' onsubmit="return signUp()">
		
		<div>	
		<input type="text" id="userName" placeholder="Your name" name="userName"/><p id="fnameerr"></p><br>
		</div>
		<br>
		
		<div>	
		<input type="text" id="email" placeholder="Email" name="email" /><p id="mailerr"></p><br>
		</div>
		<br>
		
		<div>
		<input type="password" id="password" placeholder="Password" name="password" /><p id="passerr"></p><br>
		</div>
		<br>
		
		<div>	
		<input type="submit" value="Register" />
		<input type="reset" value="Clear"/>
		</div>	
	</form>
        </div>
        <div class="modal-footer">
        
    	
    					
          
          <button type="button" class="btn btn-info btn-lg" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>



<div class="container">
  <h2></h2>
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="login" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" id="signup-head">
          <button type="button" class="close" data-dismiss="modal"></button>
          <h4 class="modal-title" align="center">Login here Here..</h4>
        </div>
        <div class="modal-body">
          	<form  action="/University" method="post" id="login-form" align="center" onSubmit="return validateSignUp()" name="frmSignup">
		
		<div>	
		<input type="text" name="userName" placeholder="Your name" required/><br>
		</div>
		<br>
		
		
		
		<div>
		<input type="password" name="password" placeholder="Password" required/><br>
		</div>
		<br>
		
		<div>	
		<input type="submit" value="Login" onSubmit="validateSignUp"/>
		<input type="reset" value="Clear"/>
		
		</div>	
	</form>
        </div>
        <div class="modal-footer">
          
    					
          <button type="button" class="btn btn-info btn-lg" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

<div class="container">
  <h2></h2>
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="university" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" id="signup-head">
          <button type="button" class="close" data-dismiss="modal"></button>
          <h4 class="modal-title" align="center"> Create ur own University Here..</h4>
        </div>
        <div class="modal-body">
          	
				<div class="new-photo">
					<div class="camera" id="cam-univ">
						<i class="camera icon-camera icon-2x"></i>
					</div>
					<div id="upload-photo" class="choose-img" width="144" height="144">
						<img id="img-univ" class="img-item" src>
					</div>
				</div>
				
				<div class="text-univ">
					
					<input type="text" id="name-univ" placeholder="Name of your University"></input>
					<br><br>
					<textarea rows="" cols="" id="info-univ" placeholder="Describe Your University"></textarea>
					<br><br>
					
						<select>
							<option>Choose Ur Category</option>
							
							<optgroup label="Education">
							<option>Teaching</option>
							<option>Traning</option>
							</optgroup>
							
							<optgroup label="Business">
							<option>Accounting</option>
							<option>Commerce</option>
							<option>Finance</option>
							<option>Globalization</option>
							<option>Marketing</option>
							<option>Sales</option>
							<option>Business Law</option>
							<option>Office Work</option>
							</optgroup>
							
							<optgroup label="IT">
							<option>Software</option>
							<option>Hardware</option>
							<option>Data & DataBase</option>
							</optgroup>
							
							<optgroup label="Hobbistics">
							<option>Design</option>
							<option>Music</option>
							<option>Cooking</option>
							<option>Language</option>
							<option>Magic</option>
							</optgroup>
							
						</select>
					
				</div>
		
			
				
        </div>
      
        <div class="modal-footer">
        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#University">Create</button>
          <button type="button" class="btn btn-info btn-lg" data-dismiss="modal">Close</button>
        </div>
      
      </div>
      
    </div>
  </div>
  
</div>

<br><br>

<div class="jumbotron">
	<h2 align="center">AdaptiveU is perfect place for engaging with your</h2>
		<h1 align="center">Students,Employees,Customers</h1>
		 <br><br>


<div align="center" class="container" id="">
	<article class="top">
	<ul class="nav nav-tabs" id="engage">
		<li>

			<img src="images/stu.jpg" height="200" width=180"/>
			<h4>Employee</h4>
			<p style="width:270px">Train,track and manage ur employee progress</p>
			
		</li>
		
		<li>
		
			<img src="images/emp.jpeg" height="200" width=180"/>
			<h4>Student</h4>
			<p style="width:270px">Say Bye-Bye to class rooms..Start teaching on cloud...</p>
			
		</li>
		<li>
		
			<img src="images/comicon3.png" height="200" width=180"/>
			<h4>Student</h4>
			<p style="width:270px">Explore and create challenges, to build a better community..</p>
			
		</li>
	
	
	</ul>
	</article>
</div>
	</div>





	

		
<article class="anywr">
<div class="anywr-con">
	
	<img src="images/con2_bg.png" style="float:right;height:150;width:100"/>
	<h2 align="center" color:"blue">Use content from anywhere</h2>
	<p>The web is packed with incredible content. AdaptiveU lets you create online courses by combining favourite videos, articles and websites to built your curriculum..<p>
	
</div>
</article>
<article class="cloud">

	<div class="cloud-con">
	
		<div class="cloud-content">
		
			<h3>Teach from the cloud</h3>
			<p>The power of online learning means the world is your classroom. With AdaptiveU teachers and students alike can engage in a meaningful way from anywhere on earth.</p>
		
		</div>
	
	</div>


</article>

<article class="prog">
	
	<div class="pro-con">
		<h1>Take Progress & Reward</h1>
		<p>Track everyday progress, reward virtual currency and stow excitement with gifts.</p>
		
	<div class="pro-con-img">
	
		<ul class="nav nav-tabs" id="progress">
		
			<li width="300">
				<img src="images/prog.jpeg" height="100" width="90"/>
				<h4>Track Progress</h4>
			
			</li >
			<li width="300">
				<img src="images/point.jpeg" height="100" width="90"/>
				<h4>Award Points</h4>
			</li>
			<li width="300">
				<img src="images/gift.jpeg" height="100" width="90"/>
				<h4>Give Rewards</h4>
			</li>
		
		</ul>
	
	</div>

	</div>
</article>

<footer>
	<div class="getstart">
		<h3>Create your Own University!!!</h3>
		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#university">Create!!!</button>
		
	</div>
	
	<div class="link">
		<div class="nav nav-tabs">
			<h4>Solutions</h4>
			<ul class="nav nav-tabs" id="foot-link">
			
			<li><ul>
				<li>
					<a target="blank" href="/create-online-univ">Create Online University</a>
				</li>
				<li>
					<a target="blank" href="/create-online-courses">Create Online Courses</a>
				</li>
				<li>
					<a target="blank" href="/create-online-classroom">Create Online Classroom</a>
				</li>
				<li>
					<a target="blank" href="/online-traing-software">Online Traing Software</a>
				</li>
				
			</ul></li>
			<li><ul>
				<li>
					<a target="blank" href="/free-elearning-sw">Free e-Learning Software</a>
				</li>
				<li>
					<a target="blank" href="/customer-training">Customer Traning</a>
				</li>
				<li>
					<a target="blank" href="/employer-traing">Employer Traning</a>
				</li>
				<li>
					<a target="blank" href="/learning-mgmt-system">Learning Management System</a>
				</li>
			</ul></li>
			</ul>
		</div>
	
	</div>
	
</footer>

<div class="navbar navbar-default navbar-fixed-bottom">
<div class="container">
<p class="navbar-text pull-left">AdaptiveU © 2015 All rights reserved</p>
<a class="navbar-btn btn-danger btn navbar-right">Terms & Conditions</a> 
<a class="navbar-btn btn-danger btn pull-right">Privacy Ploicy</a>
</div>

</div>

	
</body>
</html>