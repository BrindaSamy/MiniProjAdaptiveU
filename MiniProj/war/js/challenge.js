
var chaTitle,chaID,creator,badge,save;


function check()

{

	
	chaID=document.getElementById("cha_ID").value;  
	
	chaTitle=document.getElementById("title").value;  

	creator=document.getElementById("creator").value; 

	badge=document.getElementById("badge").value;
	
	save=document.getElementById("save").value;

	
 

 

 

	if(chaID=="")
	{
	
	
	
		document.getElementById("IdErr").innerHTML="ID shouldn't be empty";

		return false;

	}
	else if(!chaID.match(/^[0-9]+$/))

	{

		document.getElementById("IdErr").innerHTML="First Name should be character values";


		return false;

	}

	else

	{

		document.getElementById("IdErr").innerHTML="";

	}
	
	//For Ttile
	
	if(chaTitle=="")
	{
	
	
	
		document.getElementById("TitErr").innerHTML="Title shouldn't be empty";

		return false;

	}
	

	else

	{

		document.getElementById("TitErr").innerHTML="";

	}
	
	
	
	//Badges
	if(badge=="")
	{
	
	
	
		document.getElementById("BadErr").innerHTML="It shouldn't be empty";

		return false;

	}
	else if(!badge.match(/^[0-9]+$/))

	{

		document.getElementById("BadErr").innerHTML="Badges should be numeric values:[Ex:200]";


		return false;

	}

	else

	{

		document.getElementById("BadErr").innerHTML="";

	}
	
	//Creator
	
	if(creator=="")
	{
	
	
	
		document.getElementById("CreErr").innerHTML="Creator name shouldn't be empty";

		return false;

	}
	else if(!creator.match(/^[A-Za-z\s]+$/))

	{

		document.getElementById("CreErr").innerHTML=" Name should be character values";


		return false;

	}

	else

	{

		document.getElementById("CreErr").innerHTML="";

	}

	
	confirm("YU wanna create this")
	

	
	


 

 

}