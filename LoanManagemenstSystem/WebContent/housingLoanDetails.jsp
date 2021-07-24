<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<title>Uplift Company</title>


<style>
	* {box-sizing: border-box}

/* Set height of body and the document to 100% */
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
  padding: 100px 20px;
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

.button {
  background-color: #aed6f1 ;
  border: none;
  border-radius: 5px;
  color: black;
  padding: 7px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 0px 20px 0px 5px;
  float:right;
  
  }

.image1{

bottom:400px;
float:right;

}

.input{

margin-left:900px
}


</style>
</head>
<body>

<div class="card">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Personal Loan Details</h5>
    <p class="card-text">Apply for a Loan now !<input class="input" placeholder="Employee ID" oninput="this.className = ''"  ><button class="button" >OK</button></p>
    
  </div>
</div>

	<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="#"  class="tablink" onclick="openPage('Features', this, '  #aed6f1')"id="defaultOpen">Features</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#" class="tablink" onclick="openPage('Eligibility', this, ' #aed6f1')" >Eligibility</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="#" tablink" onclick="openPage('Documents', this, ' #aed6f1')">Documents</a>
  </li>
  
   <li class="nav-item">
    <a class="nav-link active" href="#" tablink" onclick="openPage('HowToApply', this, ' #aed6f1')">How to Apply</a>
  </li>
 
  
</ul>
	<img class="image1" src="Images/bg2.png" height = 500px width = 700px>
	
	


<div id="Features" class="tabcontent">
  <h3>Personal Loan</h3>
  <p>Get a step closer to your dreams and goals by availing our Personal Loans and meet your financial needs. You can avail a personal loan to meet unexpected expenses, a dream holiday, school or college fees, wedding expenditure, home improvement expenses or even purchase of consumer durables.</p>
  <p> <i class="arrow right" ></i> Simplified documentation</p>
  <p> <i class="arrow right"></i>  Competitive pricing</p>
  <p> <i class="arrow right"></i>  Transparency</p>
  <p> <i class="arrow right"></i>  Personal loans available for various needs</p>
  
</div>

<div id="Eligibility" class="tabcontent">
  <h3>An applicant should be</h3>
   <p> <i class="arrow right" ></i>      In the age group of 18-55 (Applicants over 55 can be entertained, but only under special circumstances) </p>
  <p> <i class="arrow right"></i> With a take home salary of LKR 30,000 & 40,000 or  more </p>
  <p> <i class="arrow right"></i>       A salaried employee belonging to the following categories 

- ​Permanent employees of Government Service/ Statutory Bodies

- Employees of Private sector entities as listed by the bank (Refer List)</p>
</div>

<div id="Documents" class="tabcontent">
  <h3>We provide a personal loan with minimum documentation</h3>
  <p> <i class="arrow right" ></i> Loan Application</p>
  <p> <i class="arrow right"></i>  Letter from Employer confirming service, position & salary </p>
  <p> <i class="arrow right"></i>  Form No.375 to be obtained</p>
  <p> <i class="arrow right"></i>  Proof of Identification (NIC/ Passport) </p>
  
</div>

<div id="HowToApply" class="tabcontent"> 

 <h3>How to Apply</h3>
  
  <p> <i class="arrow right" ></i> Click on the Apply Online button (or Visit any Branch)</p>
  <p> <i class="arrow right"></i>  Complete the online Application</p>
  <p> <i class="arrow right"></i>  Once completed click on Submit button - please remember the reference number given</p>
  <p> <i class="arrow right"></i>  You will receive an email or telephone call to visit the branch with required documents </p>
  
</div>












<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


</script>


</body>
</html>