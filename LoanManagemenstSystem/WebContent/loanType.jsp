<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<title>Uplift Digital Company|Loan Details</title>
</head>
<style>

body, html {
  height: 100%;
  margin: 0;
  font-family: 'Poppins', sans-serif;
   position: fixed;
  top: 0;
  bottom: 0;
  width: 100%;
  height: 100vh;
}


/* Header */
.header {
 
  padding: 1px;
  text-align: center;
  background: linear-gradient(to bottom, white 0%, white 100%);
}

.header h1 {

  margin-top:10px;
  font-size: 40px;
  color: MidnightBlue;
  text-shadow: 2px 2px LightBlue;
  font-style: italic;
}

.header p{
	font-size: 20px;
	font-weight: bold;
	font-style: italic;
	margin-top: -11px;
	
}
/*Horizontal navigation Bar*/
.button {
  background-color: MidnightBlue;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 6px 16px;
  font-size: 18px;
  width: 25%;
  

  
  
}

.button:hover {
  background-color: #777;
}

.header-right {
    float: middle;
  }
  .header img {
  float: left;
  padding: 12px;
  margin-top: 20px;
  width: 150px;
  height: 100px;
  margin-left: 20px;

}


/* Style tab links */
.tablink {
  background-color:white ;
  color: black;
  float: left;
  border-color: #aed6f1;
  outline: none;
  cursor: pointer;
  padding: 10px 5px;
  font-size: 17px;
  width: 25%;
  border-radius:15px 15px 5px 5px;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: black;
  display: none;
  padding: 30px 20px;
  height: 100%;
}

#Features {background-color: white;}
#Eligibility {background-color: white;}
#Documents {background-color: white;}
#HowToApply {background-color: white;}	

.arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
  border-color:yellow ;
  
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}


	.button1{
	
  background-color:  white;
  border: none;
   border-radius: 12px;
  border-style: outset;
  color: black;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 50px  200px ;
	}
	
	
	.button2{
	
  background-color:  white;
  border: none;
   border-radius: 12px;
  border-style: outset;
  color: black;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 10px  200px;
	}
	
	image1{
	
			margin:100px;
	}





</style>
<body>

<div class="header">
	
		 <img src="Images/logo1.png" style="width:100px;height:60px;background-color:gray;">
		<div class="header-right">
  		<h1>Uplift Digital Marketing (Pvt) Ltd.</h1>
  		<p>Employee Management System</p>
  		</div>
  	
	</div>

		<button class="button" onclick="#" >Home</button>
		<button class="button" onclick="#" >Admin</button>
		<button class="button" onclick="#" >Contact</button>
		<button class="button" onclick="#" >About Us</button>
		
		
		



  
  
    <h5 class="card-title">Uplift Digital Company</h5>
    <p class="card-text">Apply for a Loan now !</p>
    
 



		<a href="housingLoanDetails.jsp"><button class="button1" type="button"><img  src="Images/housingloan.svg" width="100px" height= "100px">HOUSING LOANS</button></a>
		<a href="loanDetails.jsp"><button class="button2" type="button1" onclick="doSubmit();" ><img src="Images/personalloan.png" width="100px" height= "100px">PERSONAL LOANS</button></a>
  



		
		

		<img class="image1" src="Images/bg4.jpg" height = 300px width = 500px>

</body>
</html>