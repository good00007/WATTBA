package User;

public class UserInfo {
	
	
		private String username;
		private String email;
		private String password;
	

		
		public UserInfo() {
		}
		
		public UserInfo(String email, String pass) {
			this.email = email;
			this.password = pass;
		}
	
		
		public UserInfo(String un, String ea, String pass) {
			this.username = un;
			this.email = ea;
			this.password = pass;	
		}
	
	
		public String getUsername() {
			return this.username;
		}
		
		public String getEmailAddress() {
			return this.email;
		}
		
		public String getPassword() {
			return this.password;
		}
	
		
		public void setUsername(String un) {
			this.username = un;
		}
		
		public void setEmail(String email) {
			this.email = email;
		}
		
		public void setPassword(String pass) {
			this.password = pass;
		}
		
		
}
