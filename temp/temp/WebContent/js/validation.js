function validateform(){  
	var email=document.login.login-email.value;  
	var pw=document.login.login-password.value;  
	  
	if (email==null || email==""){  
	  alert("E-mail can't be blank");  
	  return false;  
	}else if(pw.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  }

function validatemail(){
	
	var email=document.signup.signup-email.value;
	var pw=document.signup.signup-password.value;  
	var at=email.indexOf("@");
	var dot=email.lastIndexOf(".");
	
	if(at<1 || dot<at+2 || dot+2>=email.length ){
		alert("Please enter a valid Email address");
		return false;
	}
	else if(pw.length<6){  
		  alert("Password must be at least 6 characters long.");  
		  return false;  
	}
}