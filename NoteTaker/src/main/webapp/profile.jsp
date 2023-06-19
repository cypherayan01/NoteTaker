<%@page import="com.entities.Note"%>
<%@page import="java.util.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp" %>
<title>Insta-Notes : All notes</title>
</head>
<body style="background-color:#8cc751">
	<div class="container-fluid p-0 m-0"> <!-- -fluid p-0 m-0 -->
    <%@include file="navbar.jsp" %>
    	<br><br><br><br><br><br><br>
    	<%
    	Session s=FactoryProvider.getFactory().openSession();
    	Query q = s.createQuery("from Note where username=:username");
		q.setParameter("username",user.getUsername());
		List<Note> list=q.list();
		int val=list.size();
    	%>
    	</div>
    	<div class="container text-center " style="display:flex; align-items:center; 
    		 width : 600px;">
    		<div class="card text-center " style="width : 600px;">
				  <div class="card-header">
				    <i class="fa fa-user fa-3x"></i>
				  </div>
				  <div class="card-body">
				    <table class="table">
	        
	        	<tbody>
	        		<tr>
	        			<th><h3>User Id :</h3></th>
	        			<td><h4><%=user.getUserId() %></h4></td>
	        		</tr>
	        		<tr>
	        			<th><h3>User Name :</h3></th>
	        			<td><h4><%=user.getUsername() %></h4></td>
	        		</tr>
	        		<tr>
	        			<th><h3>No of Notes : </h3></th>
	        			<td><h4> <%=val %> </h4></td>
	        		</tr>
	        		<tr>
	        			<th><h3>Email Id :</h3></th>
	        			<td><h4> <%=user.getUseremail() %> </h4></td>
	        		</tr>
	        		
	        	</tbody>
	        </table>
				    <a href="Logout.jsp" class="btn btn-warning">Logout</a>
				  </div>
				  <div class="card-footer text-muted">
				    Account Created on : <%=user.getJoinDate() %>
				  </div>
			</div>
    	</div>
    	<%
    		s.close();
    		%>

</body>
</html>