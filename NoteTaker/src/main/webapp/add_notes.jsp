<%@page import="com.entities.Message"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

   <%@include file="all_js_css.jsp" %>
	
    <title>Insta-Notes : Add notes</title>
  </head>
  <body style="background-color:#8cc751">
  
  <%@include file="navbar.jsp" %>
    	<br><br>
  <%
	Message m1=(Message)session.getAttribute("msg");
	if(m1!=null){ %>
		<div class="alert alert-<%=m1.getCssClass() %>" role="alert">
		  <%= m1.getContent() %>
		</div>
<% 
	}
%>
<%session.removeAttribute("msg"); %>
  
    <%-- <% User user=(User)session.getAttribute("currentUser"); %> --%>
    <div class="container-fluid p-0 m-0"> <!-- -fluid p-0 m-0 -->
    
    	</div>
    	<div class="container text-center">
    	<h1>Add your notes here</h1>
    	<br><br><br>
    	<!-- This is add form  -->
    	
    	<form action="SaveNoteServlet" method="post">
    	<input value="<%=user.getUsername() %>" name="username" hidden />
    	
		  <div class="form-group" >
		    <label for="title" class="font-weight-bold"><h3>Note Title</h3></label>
		    <input name="title" required type="text" class="form-control" 
		    id="title" aria-describedby="emailHelp" placeholder="Enter here" 
		    style="border:2px solid #568203"/>
		    
		  </div>
		  
		  <div class="form-group">
		    <label for="content" class="font-weight-bold"><h3>Note Content</h3></label>
		    <textarea name="content" required type="password" class="form-control" 
		    id="content" 
		    placeholder="Enter your content"
		    style="border:2px solid #568203; height:200px;"
		    >
		    </textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-warning" style="width:15rem"><h3>Add</h3></button>
		  </div>
		  
		  
		</form>
    
    </div>
    
    
    
    
    
    
    
    
    

    
  </body>
</html>