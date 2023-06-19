<%@page import="com.entities.User"%>

<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<% User user=(User)session.getAttribute("currentUser"); %>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#006400 ;">
	<%if(user==null){ %>
  		<a class="navbar-brand" href="#">Insta-Notes</a>
  		<%}else{ %>
  			<a class="navbar-brand" href="Home.jsp">Insta-Notes</a>
  		<%} %>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<%if(user==null){ %>
  		<ul class="navbar-nav mr-auto">
				      <li class="nav-item active">
				        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">Add Note</a>
				      </li>
				      
				      <li class="nav-item">
				        <a class="nav-link" href="#">Show Notes</a>
				      </li>
				    </ul>
  	<%}else{ %>
  		<ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="add_notes.jsp">Add Note</a>
			      </li>
			      
			      <li class="nav-item">
			        <a class="nav-link" href="all_notes.jsp">Show Notes</a>
			      </li>
	</ul>
  	<%} %>
    
    
    
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form> -->
    <div class="input-group-prepend">
    		
    		<%if(user==null){ %>   				
    			
    			<button type="button" class="btn btn-warning"><h4><a href="Login.jsp" style="text-decoration:none;"> Login/register</a></h4>
	          </button>
    		<%
    		}else{
    		%>    			
	          <button type="button" class="btn btn-warning"><h4><a href="profile.jsp" style="text-decoration:none; color : white"> <i class="fa fa-user"></i><%=user.getUsername() %></a></h4>
	          </button>
	        <%} %>
	          
	 </div>
    
  </div>
  
  <!-- Button trigger modal  (  data-toggle="modal" data-target="#exampleModal" ) -->
<!-- <button type="button" class="btn btn-primary" >
  Launch demo modal
</button> --> 


 <%-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body container text-center">
               
	        
	        <table class="table">
	        
	        	<tbody>
	        		<tr>
	        			<th>User Id</th>
	        			<td><%=user.getUserId() %></td>
	        		</tr>
	        		<tr>
	        			<th>User Name</th>
	        			<td><%=user.getUsername() %></td>
	        		</tr>
	        		<tr>
	        			<th>Email Id</th>
	        			<td> <%=user.getUseremail() %></td>
	        		</tr>
	        		
	        	</tbody>
	        </table>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Logout</button>
      </div>
    </div>
  </div>
</div> 
    --%>
  
</nav>