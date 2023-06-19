package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.CurrentUser;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class RegisterUserServlet
 */
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String username=request.getParameter("username");
		String useremail=request.getParameter("useremail");
		String userpassword=request.getParameter("userpassword");
		CurrentUser currentuser=new CurrentUser(username);
		
		User user=new User(username,useremail,userpassword,new Date());
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		s.save(user);
		
		tx.commit();		
		s.close();
		
		response.sendRedirect("Login.jsp");
		/*
		 * response.setContentType("text/html"); PrintWriter out=response.getWriter();
		 * out.println("<h1>Registered Successfully.... "+ currentuser.getUsername() +
		 * "</h1>");
		 */
		
		
	}

}
