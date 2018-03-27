package User;

public class UserDetails {
		private String address;
		private String postalCode;
		private String phoneNumber;
		
		public UserDetails() {
		}
		
		public UserDetails(String addr, String ps, String pn) {
				this.address = addr;
				this.postalCode = ps;	
				this.phoneNumber = pn;
		}
		
		
		public String getAddress() {
			return this.address;
		}
		
		public String getpostalCode() {
			return this.postalCode;
		}
		
		public String getphoneNumber() {
			return this.phoneNumber;
		}
		
		
		
		
		public void setAddress(String addr) {
			this.address = addr;
		}
		
		public void setpostalCode(String ps) {
			this.postalCode = ps;
		}
		
		public void setphoneNumber(String pn) {
			this.phoneNumber = pn;
		}
		
}
