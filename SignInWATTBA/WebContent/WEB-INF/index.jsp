<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
</head>
<body>
	<form action="CreateUser" method="post">
		<fieldset style="width: 300px">
			<legend> Create a user </legend>
			<table>
				<tr>
					<td>User ID</td>
					<td><input type="text" name="username" required="required" /></td>
				</tr>
				
				<tr>
					<td>email</td>
					<td><input type="text" name="email" required="required" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="userpass" required="required" /></td>
				</tr>
				<tr>
					<td>user type</td>
					<td><input type="text" name="usertype" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Create User" /></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>