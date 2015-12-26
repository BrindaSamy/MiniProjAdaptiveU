function validation()  
 {  
   var name=document.getElementById("name").value;  
   var email=document.getElementById("email").value;  
   
    
   if(name=="" && email=="" &&)  
   {  
           document.getElementById("name").focus();  
     alert("please Fill the information!");  
     return false;  
   }  
      else if(name=="")  
   {  
             document.getElementById("name").value="";  
             document.getElementById("name").focus();  
       alert("please enter name");  
       return false;  
   }  
   else if(!email.match(/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/) || email=="")  
   {  
     alert("please enter Email id");  
           document.getElementById("email").value="";  
     document.getElementById("email").focus();  
     return false;  
   }  