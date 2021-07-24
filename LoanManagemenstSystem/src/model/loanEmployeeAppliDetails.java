package model;

public class loanEmployeeAppliDetails {

	private  int loanId;
	private  String pempId;
	private  String branch;
	private  String repaymentMethod;
	private  String loanAmount;
	private  String repaymentPeriod;
	private  String department;
	private  String proffesion;
	private  String employeeType;
	private  String grossSalary;
	private  String netSalary;
	private  String otherIncome;
	private  String deductions;
	
	
	public loanEmployeeAppliDetails(int loanId, String pempId, String branch, String repaymentMethod, String loanAmount,
			String repaymentPeriod, String department, String proffesion, String employeeType, String grossSalary,
			String netSalary, String otherIncome, String deductions) {
		
		super();
		this.loanId = loanId;
		this.pempId = pempId;
		this.branch = branch;
		this.repaymentMethod = repaymentMethod;
		this.loanAmount = loanAmount;
		this.repaymentPeriod = repaymentPeriod;
		this.department = department;
		this.proffesion = proffesion;
		this.employeeType = employeeType;
		this.grossSalary = grossSalary;
		this.netSalary = netSalary;
		this.otherIncome = otherIncome;
		this.deductions = deductions;
		
		
	}
	public int getLoanId() {
		return loanId;
	}
	public String getPempId() {
		return pempId;
	}
	public String getBranch() {
		return branch;
	}
	public String getRepaymentMethod() {
		return repaymentMethod;
	}
	public String getLoanAmount() {
		return loanAmount;
	}
	public String getRepaymentPeriod() {
		return repaymentPeriod;
	}
	public String getDepartment() {
		return department;
	}
	public String getProffesion() {
		return proffesion;
	}
	public String getEmployeeType() {
		return employeeType;
	}
	public String getGrossSalary() {
		return grossSalary;
	}
	public String getNetSalary() {
		return netSalary;
	}
	public String getOtherIncome() {
		return otherIncome;
	}
	public String getDeductions() {
		return deductions;
	}
	
	
	

	
}
