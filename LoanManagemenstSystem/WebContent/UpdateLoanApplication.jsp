<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<title> Uplift Digital Company|Loan Application Update and Delete </title>
<style >

body, html {
 
  font-family: 'Poppins';
  font-size:14px;
  background-color: #838abe;
  
}


table, th, td {
  border: 0px solid white;
  box-shadow: none;
  border-collapse: collapse;
  color:white;
}
th, td {
  padding: 20px;
  text-align: right;
   
}

.selectionbox{

 margin: 5px;
 border: 1px solid blue;
 box-shadow: 2px 2px #888888;

}

.button{

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

     <%
     
     
    String loanId          = request.getParameter("loanId");
	String pempId          = request.getParameter("pempId");
	String branch          = request.getParameter("branch");
    String repaymentMethod = request.getParameter("repaymentMethod");
    String loanAmount      = request.getParameter("loanAmount");
    String repaymentPeriod = request.getParameter("repaymentPeriod");
    String department      = request.getParameter("department");
    String proffession     = request.getParameter("proffesion");
    String employeeType    = request.getParameter("employeeType");
    String grossSalary     = request.getParameter("grossSalary");
    String netSalary       = request.getParameter("netSalary");
    String otherIncome     = request.getParameter("otherIncome");
    String deductions      = request.getParameter("deductions");


     %>



<div class="card">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Uplift Digital Marketing Company</h5>
    
      
  </div>
</div>

	<form action = "update"  method="post">
	
	<table style="width:50%">
	
	 <tr>
	<th>Loan ID :</th>
	<td><input class="input" type ="text" name = "cusloanId" value="<%=loanId%>" readonly></td>
		</tr>
		
	 <tr>
	<th>Employee ID :</th>
	<td><input class="input" type ="text" name = "cuspempId" value="<%=pempId%>" readonly></td>
		
	<th>Preferred Branch:</th>
	<td> <input type ="text"  value="<%=branch%>" readonly>
	<select name="cusBranch" class = "selectionbox" >
<option>Wallawatte</option>
<option>Galle</option>
<option>Gampaha</option>

</select></td>

	
	<th>Re-payment Method:</th>
	<td><input type ="text"  value="<%=repaymentMethod%>" readonly>
	<select name="cusrepaymentMethod" class = "selectionbox">
<option>Equated Installment</option>
<option>Reducing Balance</option>

</select></td>
	</tr>
	
	<tr>
	<th>Loan Amount:</th>
	<td><input type ="text" name = "cusLoanAmount" value="<%=loanAmount%>"></td>
	
	<th>Re-payment Period:</th>
	<td><input type ="text" name = "cusRepaymentPeriod" value="<%=repaymentPeriod%>"></td>
	
	<th>Department:</th>
	<td><input type ="text" value="<%=department%>" readonly>
	<select name="cusDepartment" class = "selectionbox" >
         <option>Human Resource Department (HR)</option>
         <option>Finance Department</option>
         <option>Accounting and Finance Department</option>
         <option>Marketing</option>
</select>
</td>
	
	</tr>
	
	<tr>
	<th>Profession:</th>
	<td><input type ="text"  value="<%=proffession%>" readonly>
	<select name="cusProffesion" class = "selectionbox" >
<option>Manager</option>
<option>Employee</option>
<option></option>
</select></td>
	
	<th>Employment Type:</th>
	<td><input type ="text"  value="<%=employeeType%>" readonly>
	<select name="cusEmployeeType" class = "selectionbox" >
<option>Confirmed</option>
<option>Contract</option>
<option>other</option>
</select></td>
	
	<th>Gross Salary:</th>
	<td><input type ="text" name = "cusGrossSalary" value="<%=grossSalary%>"></td>
	
	</tr>
	
	<tr>
	 <th>Net Salary:</th>
	 <td><input type ="text" name = "cusNetSalary" value="<%=netSalary%>"></td>
	 
	 <th>Other Incomes:</th>
	 <td><input type ="text" name = "cusOtherIncome" value="<%=otherIncome%>"></td>
	 
	 <th>Deductions:</th>
	 <td><input type ="text" name = "cusDeductions" value="<%=deductions %>"></td>
	 
	</table>
	<br><br>
	
	<input type ="submit"  name="submit" value ="Update My Data"  class = " button">

		
		
		</form>
</body>
</html>