package model;

public class loanEmployee {

	private String id;
	private String fname;
	private String mname;
	private String lname;
	private String cAddress;
	private String cnumber;
	private String cemail;
	private String age;
	private String gender;
	private String birthdate;
	private String nic;
    
	

	
	public loanEmployee(String id, String fname, String mname, String lname, String cAddress, String cnumber,
			String cemail, String age, String gender, String birthdate,String nic) {
		
		
		super();
		this.id = id;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.cAddress = cAddress;
		this.cnumber = cnumber;
		this.cemail = cemail;
		this.age = age;
		this.gender = gender;
		this.birthdate = birthdate;
		this.nic = nic;
		
		
	}
	public String getId() {
		return id;
	}
	public String getFname() {
		return fname;
	}
	public String getMname() {
		return mname;
	}
	public String getLname() {
		return lname;
	}
	public String getcAddress() {
		return cAddress;
	}
	public String getCnumber() {
		return cnumber;
	}
	public String getCemail() {
		return cemail;
	}
	public String getAge() {
		return age;
	}
	public String getGender() {
		return gender;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public String getNic() {
		return nic;
	}
	
	
	

	

	
}
