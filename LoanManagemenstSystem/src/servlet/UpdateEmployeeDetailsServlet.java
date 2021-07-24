package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.loanCusDBUtil;

/**
 * Servlet implementation class UpdateEmployeeDetailsServlet
 */
@WebServlet("/UpdateEmployeeDetailsServlet")
public class UpdateEmployeeDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String loanId             =request.getParameter("cusloanId");
		String branch             =request.getParameter("cusBranch");
		String repaymentMethod    =request.getParameter("cusrepaymentMethod");
		String loanAmount         =request.getParameter("cusLoanAmount");
		String repaymentPeriod    =request.getParameter("cusRepaymentPeriod");
		String department         =request.getParameter("cusDepartment");
		String proffesion         =request.getParameter("cusProffesion");
		String employeeType       =request.getParameter("cusEmployeeType");
		String grossSalary        =request.getParameter("cusGrossSalary");
		String netSalary          =request.getParameter("cusNetSalary");
		String otherIncome        =request.getParameter("cusOtherIncome");
		String deductions         =request.getParameter("cusDeductions");
		
		
        boolean isTrue;
		
		isTrue = loanCusDBUtil.updateEmployeeDetails(loanId, branch, repaymentMethod, loanAmount, repaymentPeriod, department, proffesion, employeeType, grossSalary, netSalary, otherIncome, deductions);
		
		if(isTrue == true) {
			

			RequestDispatcher dis = request.getRequestDispatcher("loanType.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			

			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
			
		}
		
		
		
		
		
	}

}
