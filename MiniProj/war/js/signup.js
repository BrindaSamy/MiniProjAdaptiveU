
function signUp()

{

var email=document.getElementById("email").value;  

var name=document.getElementById("userName").value;  

var password=document.getElementById("password").value;  

 

 

 

if(name=="")

		{
	
		

		document.getElementById("fnameerr").innerHTML="First Name shouldn't be empty";

		return false;

		}

		else if(!name.match(/^[A-Za-z\s]+$/))

		{

			document.getElementById("fnameerr").innerHTML="First Name should be character values";


			return false;

		}

		else

		{

			document.getElementById("fnameerr").innerHTML="";

		}


		

	

	

if(email=="")

		{

			document.getElementById("mailerr").innerHTML="Email shouldn't be empty";

			return false;

		}

	else if(!email.match(/^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/))

	{

	document.getElementById("mailerr").innerHTML="Enter Proper Email Id ex:something@somthing.com";

	return false;

	}

	else

	{

		document.getElementById("mailerr").innerHTML="";

	}



	if(password=="")

	{
		document.getElementById("passerr").innerHTML="Password shouldn't be empty";

		return false;

	}
	else if(!name.match(/^[A-Za-z\s]+$/))

	{

		document.getElementById("passerr").innerHTML="Password  should be character values";


		return false;

	}

	else

	{

		document.getElementById("passerr").innerHTML="";

	}




 

 

}