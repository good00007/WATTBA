<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.util.ResourceBundle" %>

  <%ResourceBundle resourceITA = ResourceBundle.getBundle("italian_text");%>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome <%=session.getAttribute("name")%></title>
</head>
<body>
<% String logsuccess = resourceITA.getString("logsuccess"); %>
                   
    <h3><% out.print(logsuccess + "!!!"); %></h3>
    <h4>
        Hello,
        <%=session.getAttribute("name")%></h4>
</body>
</html>