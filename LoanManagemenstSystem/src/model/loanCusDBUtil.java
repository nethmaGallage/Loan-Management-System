package model;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;


public class loanCusDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<loanEmployee> validate(String employeeID){
		
		ArrayList<loanEmployee> cus = new ArrayList<>();
		
			
		
		//validate
		
		try {
			
					
			con = dbconnect.getconnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM employee Where pempId ='"+employeeID+"' ";      
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				
				String id=rs.getString(1);
				String fname  = rs.getString(2);
				String mname  = rs.getString(3);
				String lname  = rs.getString(4);
				String caddress = rs.getString(5);
				String cnumber  = rs.getString(6);
				String cemail   = rs.getString(7);
				String age      = rs.getString(8);
				String gender   = rs.getString(9);
				String birthdate = rs.getString(10); 
				String nic       =rs.getString(11);
				
				loanEmployee emp = new loanEmployee(id,fname,mname,lname,caddress,cnumber,cemail,age,gender,birthdate,nic); 
			    cus.add(emp);
			
			}
			
		
		}
		catch(Exception e){
			
			System.out.println("ERROR !");
			
		}
		
			
		return cus;
		
	}
	
	
	
	public static boolean insertEmployee(String pempId ,String branch,String repaymentMethod,String loanAmount,String repaymentPeriod,String department,String proffesion,String employeeType,String grossSalary,String netSalary,String otherIncome,String deductions) {
	
		
		boolean isSuccess = false;
		
		//Validate
		try {
								
			
			con = dbconnect.getconnection();
			stmt = con.createStatement();
			String sql ="insert into loan values (0,'"+pempId+"','"+branch+"','"+repaymentMethod+"','"+loanAmount+"','"+repaymentPeriod+"','"+department+"','"+proffesion+"','"+employeeType+"','"+grossSalary+"','"+netSalary+"','"+otherIncome+"','"+deductions+"')"; 
					
			int rs = stmt.executeUpdate(sql); //executeUpdate for INSERT,UPDATE,DELETE Methods  
			    
				if(rs > 0) {
					 isSuccess = true;
					
				}
				else {
					
					isSuccess = false;
				}
		}
		catch(Exception e) {
			
			System.out.println("ERROR !!");
			
		}
		
		
		
		return isSuccess;
			
	}
	
	public static List<loanEmployeeAppliDetails> getApplicationDetails(String Id) {
		
		ArrayList<loanEmployeeAppliDetails> cus2 = new ArrayList<>();
		
		try {
			
			
			con = dbconnect.getconnection();
			stmt = con.createStatement();
			
			String sql =" select * from loan where pempId = '"+Id+"'  "; 
			
		    rs = stmt.executeQuery(sql);   
			    
			while(rs.next()) {
				 
				  int loanId             = rs.getInt(1);
				  String pempId          = rs.getString(2);
				  String branch          = rs.getString(3);
				  String repaymentMethod = rs.getString(4);
				  String loanAmount      = rs.getString(5);
				  String repaymentPeriod = rs.getString(6);
				  String department      = rs.getString(7);
				  String proffesion      = rs.getString(8);
				  String employeeType    = rs.getString(9);
				  String grossSalary     = rs.getString(10);
				  String netSalary       = rs.getString(11);
				  String otherIncome     = rs.getString(12);
				  String deductions      = rs.getString(13);
				  
				 
				
				  
				  loanEmployeeAppliDetails emp = new loanEmployeeAppliDetails(loanId,pempId,branch,repaymentMethod,loanAmount,repaymentPeriod,department,proffesion,employeeType,grossSalary,netSalary,otherIncome,deductions); 
				  cus2.add(emp);
				
						  
			}
			
			
		}
		
		catch(Exception e) {
			
			System.out.println("ERROR ! in DB connection");
		}
		
		return cus2;
		
	}
	
	public static boolean updateEmployeeDetails(String loanId , String branch,String repaymentMethod,String loanAmount,String repaymentPeriod,String department,String proffesion,String employeeType,String grossSalary,String netSalary,String otherIncome,String deductions) {
		
		
		int convertedloanId = Integer.parseInt(loanId);
		
		
		try {

			con = dbconnect.getconnection();
			stmt = con.createStatement();
			
			String sql = " update loan set branch  = '"+branch+"' , repaymentMethod = '"+repaymentMethod+"' , loanAmount = '"+loanAmount+"' , repaymentPeriod = '"+repaymentPeriod+"' , department = '"+ department+"',proffesion='"+proffesion +"' ,employeeType = '"+employeeType+"' , grossSalary = '"+grossSalary+"' ,netSalary = '"+netSalary+"',otherIncome = '"+otherIncome+"' , deductions = '"+deductions+"'   "
					       + " where  loanId= '"+convertedloanId +"' ";
			int rs = stmt.executeUpdate(sql);  //executeUpdate for INSERT,UPDATE,DELETE Methods  
			
			
			if(rs > 0) {
				
				 isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
			}
			
			
		}
		
		catch(Exception e) {
			
				System.out.println(" DATABASE ERROR !!!");
			
		}
		
		
		return isSuccess;
		
	}
	
	
	
	public static boolean deleteemployee(String pempId) {
		
	
		
		try {
			

			con = dbconnect.getconnection();
			stmt = con.createStatement();
			
			String sql = "delete from loan where pempId  = '"+pempId+"'  " ;
			int rs = stmt.executeUpdate(sql);
			

			if(rs > 0) {
				 isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			
			System.out.println("DATABASE ERROR !!");
		}
		
		
		
		
		
		
		return isSuccess;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
