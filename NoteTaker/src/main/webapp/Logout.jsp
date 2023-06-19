<%@page import="com.entities.User"%>
<%@page import="com.entities.Message"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% session.getAttribute("currentUser");
Message m=new Message("Logout Successfully!","success","success");
session.setAttribute("msg", m);
response.sendRedirect("Login.jsp");

%>
</body>
</html>