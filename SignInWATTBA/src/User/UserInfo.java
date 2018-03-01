package User;

public class UserInfo {
	
		private String username;
		private String email;
		private String password;
		private String userType;

		
		public UserInfo() {
		}
		
		public UserInfo(String email, String pass) {
			this.email = email;
			this.password = pass;
		}
		public UserInfo(String un, String ea, String pass, String ut) {
			this.username = un;
			this.password = pass;	
			this.email = ea;
			this.userType = ut;
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
		
		public String getUserType() {
			return this.userType;
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
		
		public void setUserType(String ut) {
			this.userType = ut;
		}
}
