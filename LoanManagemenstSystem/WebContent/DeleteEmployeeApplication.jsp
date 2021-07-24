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
<title> Uplift Digital Company|Loan Details </title>
</head>
<style>

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

 <h1> Delete Your Application </h1>
 
	<form action = "delete"  method="post">
	
	<table style="width:100%">
	
	 <tr>
	<th>Loan ID :</th>
	<td><input class="" type ="text" name = "cusloanId" value="<%=loanId%>" readonly></td>
		</tr>
		
	 <tr>
	<th>Employee ID :</th>
	<td><input type ="text" name = "cuspempId" value="<%=pempId%>" readonly></td>
		
	<th>Preferred Branch:</th>
	<td> <input type ="text" name = "cusBranch" value="<%=branch%>" readonly>
	</td>

	
	<th>Re-payment Method:</th>
	<td><input type ="text" name = "cusrepaymentMethod" value="<%=repaymentMethod%>" readonly>
	</td>
	</tr>
	
	<tr>
	<th>Loan Amount:</th>
	<td><input type ="text" name = "cusLoanAmount" value="<%=loanAmount%>" readonly></td>
	
	<th>Repayment Period:</th>
	<td><input type ="text" name = "cusRepaymentPeriod" value="<%=repaymentPeriod%>" readonly></td>
	
	<th>Department:</th>
	<td><input type ="text" name = "cusDepartment" value="<%=department%>" readonly>
	
</td>
	
	</tr>
	
	<tr>
	<th>Profession:</th>
	<td><input type ="text" name = "cusProffesion" value="<%=proffession%>" readonly>
	</td>
	
	<th>Employment Type:</th>
	<td><input type ="text" name = "cusEmployeeType" value="<%=employeeType%>" readonly>
	</td>
	
	<th>Gross Salary:</th>
	<td><input type ="text" name = "cusGrossSalary" value="<%=grossSalary%>" readonly></td>
	
	</tr>
	
	<tr>
	 <th>Net Salary:</th>
	 <td><input type ="text" name = "cusNetSalary" value="<%=netSalary%>" readonly></td>
	 
	 <th>Other Incomes:</th>
	 <td><input type ="text" name = "cusOtherIncome" value="<%=otherIncome%>" readonly></td>
	 
	 <th>Deductions:</th>
	 <td><input type ="text" name = "cusDeductions" value="<%=deductions %>" readonly></td>
	 
	</table>
	<br><br>
	
	<input type ="submit"  name="submit" value ="Delete My Application" class="button">

		
		
		</form>





</body>
</html>