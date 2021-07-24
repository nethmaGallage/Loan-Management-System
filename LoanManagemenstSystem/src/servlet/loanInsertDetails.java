package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.loanCusDBUtil;
import model.loanEmployee;
import model.loanEmployeeAppliDetails;


/**
 * Servlet implementation class loanInsertDetails
 */
@WebServlet("/loanInsertDetails")
public class loanInsertDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String pempId             = request.getParameter("eid");
		String branch             =request.getParameter("branch");
		String repaymentMethod    =request.getParameter("methodRepayment");
		String loanAmount         =request.getParameter("loanAmount");
		String repaymentPeriod    =request.getParameter("repaymentperiod");
		String department         =request.getParameter("companyDepartment");
		String proffesion         =request.getParameter("employeeProffesion");
		String employeeType       =request.getParameter("employeeType");
		String grossSalary        =request.getParameter("grossSalary");
		String netSalary          =request.getParameter("netSalary");
		String otherIncome        =request.getParameter("otherIncome");
		String deductions         =request.getParameter("deductions");
		
		
		
		
		boolean isTrue;
		
		isTrue = loanCusDBUtil.insertEmployee(pempId,branch,repaymentMethod , loanAmount, repaymentPeriod,department, proffesion,employeeType,grossSalary,netSalary, otherIncome,deductions);
		
		if(isTrue == true) {
			
			List<loanEmployeeAppliDetails> cusDetails2 = loanCusDBUtil.getApplicationDetails(pempId);
			request.setAttribute("cusDetails2",cusDetails2);
			
			List<loanEmployee> cusDetails = loanCusDBUtil.validate(pempId);
			request.setAttribute("cusDetails",cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
		
		}

	}


