<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<title>Uplift Company</title>

<style>


body {

 /** background-image: linear-gradient(rgba(48, 47, 47, 0.7),rgba(0, 0, 0, 0.7)), url("Images/bg6.png") ; **/
  height: 100%;
  margin: 0;
  font-family: 'Poppins', sans-serif;
  position: fixed;
  top: 0;
  bottom: 0;
  width: 100%;
   
}

 /* Style the form */
#regForm {
  
  background-color: none;  
  margin: 10px auto;
  text-align: justify;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

/* Style the input fields */
input {
  margin: 5px auto;
  padding: 5px;
  width: 30%;
  font-size: 16px;
  font-family: Raleway;
  border: 0.5px solid gray ;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 10px 2px;
  background-color: black;
  border: none;
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
  
}

/* Mark the active step: */
.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
} 


}

::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: red;
  opacity: 1; /* Firefox */
}

.dropnav{

 margin: 5px auto;
  padding: 5px;
  width: 30%;
  font-size: 16px;
  font-family: Raleway;
  border: 0.5px solid gray ;
}





</style>
</head>
<body>




<div class="card">
  <div class="card-header">
    <img src="Images/logo1.png" style="width:90px;height:50px;background-color:gray;">
  </div>
  <div class="card-body">
    <h5 class="card-title"></h5>
    
   </div> 
   </div>
   
    
    
  <form id="regForm" action="">
  
  <h3>Loan Application</h3>
  
 <!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:40px;">
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
</div>




<!-- One "tab" for each step in the form: -->
<div class="tab">Personal Details
  <p>First Name : <input placeholder="First name..." oninput="this.className = ''"  >  Middle Name :  <input placeholder="Last name..." oninput="this.className = ''"  ></p>  
  <p>Last Name :  <input placeholder="First name..." oninput="this.className = ''"  >  Employee ID :  <input placeholder="Last name..." oninput="this.className = ''" ></p> 
  <p>NIC  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <input placeholder="First name..." oninput="this.className = ''" >&nbsp; Date of Birth : <input placeholder="Last name..." oninput="this.className = ''" ></p>
   Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
   <select class="dropnav">
    <option value="0">Select from here</option>
    <option value="1">Female</option>
    <option value="2">Male</option>
    </select> 
   
  <p>Mobile No :  <input placeholder="First name..." oninput="this.className = ''"   id="myInput"><button onclick="document.getElementById('myInput').value = ''">Clear</button>  Email :        <input placeholder="Last name..." oninput="this.className = ''"  ></p>
 
</div>

<div class="tab">Loan Details 
  <p>Repayment Method :<input placeholder="E-mail..." oninput="this.className = ''"></p>
  <p>Loan Amount (in rupees) :<input placeholder="E-mail..." oninput="this.className = ''"></p>
  <p>Repayment Period(in months) :<input placeholder="Phone..." oninput="this.className = ''"></p>
</div>

<div class="tab">Financial Details
  <p>Department you work :<input placeholder="dd" oninput="this.className = ''"></p>
  <p>Select profession :<input placeholder="mm" oninput="this.className = ''"></p>
  <p>Gross Salary :<input placeholder="yyyy" oninput="this.className = ''"></p>
</div>

<div class="tab">Confirmation 
 <p>First Name : <input placeholder="First name..." oninput="this.className = ''"  >  Middle Name :  <input placeholder="Last name..." oninput="this.className = ''"  ></p>  
  <p>Last Name :  <input placeholder="First name..." oninput="this.className = ''"  >  Employee ID :  <input placeholder="Last name..." oninput="this.className = ''" ></p> 
  <p>NIC :        <input placeholder="First name..." oninput="this.className = ''" >  Date of Birth :  <input placeholder="Last name..." oninput="this.className = ''" ></p>
</div>

<div style="overflow:auto;">
  <div style="float:right;">
    <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
    <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
     
     
  </div>
</div>
</form>








</body>
<script>

var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form ...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  // ... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  // ... and run a function that displays the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form... :
  if (currentTab >= x.length) {
    //...the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false:
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class to the current step:
  x[n].className += " active";
}

</script>
</html>