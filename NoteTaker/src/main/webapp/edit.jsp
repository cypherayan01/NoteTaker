<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   <%@include file="all_js_css.jsp" %>
	
    <title>Insta-Notes : Home</title>
  </head>
  <body>
    
    <div class="container"> <!-- -fluid p-0 m-0 -->
    <%@include file="navbar.jsp" %>
    	<br>
    	<h2>Edit your Note</h2>
    	<br>
    	<%
    		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	    	Session s= FactoryProvider.getFactory().openSession();
			Note note= (Note)s.get(Note.class, noteId);
    	%>
    	<form action="UpdateServlet" method="post">
    	
    		<input value="<%=note.getId() %>" name="noteId" hidden />
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input name="title" required type="text" class="form-control" 
		    id="title" aria-describedby="emailHelp"
		     placeholder="Enter here" 
		     value="<%=note.getTitle() %>"
		     />
		    
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name="content" required type="password" class="form-control" 
		    id="content" 
		    placeholder="Enter your content"
		    style="height:300px"><%=note.getContent() %>
		    </textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-success">Save Note</button>
		  </div>
		  
		  
		</form>
    </div>
    
    
    
    
    
    
    
    
    

    
  </body>
</html>