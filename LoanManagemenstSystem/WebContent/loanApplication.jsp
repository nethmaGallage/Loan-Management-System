 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core"%>
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


 /* Style the form */
#regForm {
  
  background-color: none;  
  margin: -15px auto;
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

.button1{

  background-color:#66CCCC;
  border: none;
  border-radius: 5px;
  color: black;
  padding: 5px ;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 15px;
  margin-left: 20px;
  
}







</style>
</head>
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
		
		
		<h3>Loan Application</h3>
    
  
   
   
	
   
   
    
  <form id="regForm" action="insert" method ="post">
  
   <div style="overflow:auto; ">
  <div style="float:right;">
    <button type="button"  class="button1" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
    <button type="button" class="button1" id="nextBtn" onclick="nextPrev(1)">Next</button>
   <!--  <input type="submit"  class="button" id="subBtn" name="submit" value="Submit"> -->
     
     
  </div>
</div>
  
 
  
  
  
  
 <!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:40px;">
  <span class="step"></span>
  <span class="step"></span>
  <span class="step"></span>
  
</div>



<c:forEach var ="cus"  items ="${cusDetails}"> 
<!-- One "tab" for each step in the form: -->
 

<div class="tab" >Personal Details
  <p>First Name : <input placeholder="First Name"  oninput="this.className = ''" value="${cus.fname}" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Middle Name :  <input placeholder="Middle Name" oninput="this.className = ''" value="${cus.mname}" ></p>  
  <p>Last Name :  <input placeholder="Last Name" oninput="this.className = ''" value ="${cus.lname}" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Employee ID :&nbsp;&nbsp; <input placeholder="Employee ID" oninput="this.className = ''" value = "${cus.id}" name ="eid" ></p> 
  <p>NIC : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input placeholder="NIC" oninput="this.className = ''" value="${cus.nic}" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date of Birth :&nbsp;&nbsp;&nbsp;&nbsp; <input placeholder="Date Of Birth" oninput="this.className = ''" value = "${cus.birthdate}"></p>
  <p>Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input placeholder="Gender"  oninput="this.className = ''" value="${cus.gender}" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input placeholder="Mobile No" oninput="this.className = ''"   id="myInput"  value="${cus.cnumber}"> </p>
  <p> Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input placeholder="Email" oninput="this.className = ''"  value = "${cus.cemail}"></p>
 
</div>

</c:forEach>



<div class="tab">Loan Details 


<p> Loan Amount (in rupees) :<input placeholder=" Enter Loan Amount" oninput="this.className = ''" name="loanAmount"></p>
<p>Repayment Period(in months) :<input placeholder="Enter Repayment Period" oninput="this.className = ''" name = "repaymentperiod"></p>



<p>Preferred Branch:
<select name="branch">
<option>Wallawatte</option>
<option>Galle</option>
<option>Gampaha</option>

</select>
 Repayment Method :
 
<select name="methodRepayment">
<option>Equated Installment</option>
<option>Reducing Balance</option>

</select>
</p>

</div>


<div class="tab">Financial Details

<p> Department you Work:
<select name="companyDepartment">
<option>Human Resource Department (HR)</option>
<option>Finance Department</option>
<option>Accounting and Finance Department</option>
<option>Marketing</option>
</select> 
  Profession :
  
<select name="employeeProffesion">
<option>Manager</option>
<option>Employee</option>

</select></p>
  <p>Employment Type :
 
<select name="employeeType">
<option>Confirmed</option>
<option>Contract</option>
<option>other</option>
</select>  
  Gross Salary(in Rupees) :<input placeholder="Enter the gross salary" oninput="this.className = ''" name = "grossSalary"> </p> Net Salary(in Rupees):<input placeholder="Enter the net salary" oninput="this.className = ''" name ="netSalary"></p>
  <p>Other Incomes(in Rupees) :<input placeholder="Enter other incomes" oninput="this.className = ''" name = "otherIncome"></p><p>Deductions(in Rupees):<input placeholder="Enter deduction" oninput="this.className = ''" name="deductions"></p>

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
    document.getElementById("subBtn").style.display = "none";
    
    
    
  } else {
    document.getElementById("prevBtn").style.display = "inline";
    document.getElementById("nextBtn").innerHTML = "Submit";
    
    
  }
  if (n == (x.length -1)) {
   
    document.getElementById("subBtn").style.display = "inline";
   
    
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