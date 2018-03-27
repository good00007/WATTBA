package User;

public class UserInfoUpdate {

	private String username;
	private String email;
	private int customerID;
	private String address;
	private String postalCode;
	private String phoneNumber;
	
	public UserInfoUpdate() {
	}
	
	public UserInfoUpdate(String un, String ea,String add, String ps, String pn, int id) {
		this.email = ea;
		this.username = un;
		this.address = add;
		this.postalCode = ps;
		this.phoneNumber= pn;
		this.customerID = id;
	}	
	
	
	public String getUsername() {
		return this.username;
	}
	
	public String getEmailAddress() {
		return this.email;
	}
	
	public int getID() {
		return this.customerID;
	}
	public String getAddress() {
		return this.address;
	}
	public String getPostalCode() {
		return this.postalCode;
		
	}public String getPhoneNumber() {
		return this.phoneNumber;
	}
	
	public void setUsername(String un) {
		this.username = un;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public void setID(int id) {
		 this.customerID = id;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	public void setPostalCode(String ps) {
		this.postalCode = ps;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	
	
}
