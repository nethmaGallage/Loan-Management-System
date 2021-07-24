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

/**
 * Servlet implementation class loanloaginservlet
 */
@WebServlet("/loanloaginservlet")
public class loanloaginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("eid"); 
		
		
		try {
		
			List<loanEmployee> cusDetails = loanCusDBUtil.validate(id);
		
			request.setAttribute("cusDetails",cusDetails);
		
		}
		
		catch(Exception e) {
			
			System.out.println("ERROR !!");
		}
		
		
		
		RequestDispatcher  dis = request.getRequestDispatcher("loanApplication.jsp");
		dis.forward(request, response);
			
		
		
	}
}



		



	
	


