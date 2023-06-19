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
<title>Insta-Note : All notes</title>
</head>
<body style="background-color:#8cc751">
	<div class="container-fluid p-0 m-0"> <!-- -fluid p-0 m-0 -->
    <%@include file="navbar.jsp" %>
    	<br>
    	</div>
    	<div class="container text-center">
    	<h1 class="text-uppercase">All Notes</h1>
    	
    	<div class="row">
    		<div class="col-12">
    		
    		<%
    	 	Session s=FactoryProvider.getFactory().openSession();
    		String username= user.getUsername();
    		Query q = s.createQuery("from Note where username=:username");
    		q.setParameter("username",username);
    		List<Note> list=q.list();
    		for(Note note:list){
    		%>
    			<div class="card mt-3" style="border:2px solid #568203">
			  <img class="card-img-top m-4 mx-auto " style="max-width:100px;  " src="img/pencil.png">
			  <div class="card-body px-5">			  	
			    <h4 class="card-title"><%= note.getTitle() %></h4>
			    <p class="card-text"><%=note.getContent() %></p>
			    <p class="card-text" style="color:#009000;">published at : <%=note.getAddedDate() %></p>
			    <div class="container text-center mt-2">
			    	<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-danger">Edit</a>
			    	<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-warning">Delete</a>
			    </div>
			  </div>
			</div>
    		
    		
    		<%
    		}
    		s.close();
    		%>
    		
    		
    		</div>    	 
    	</div>    	
    </div>

</body>
</html>