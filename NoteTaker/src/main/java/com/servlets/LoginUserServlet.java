package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;

import com.entities.Message;
import com.entities.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class LoginUserServlet
 */
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String useremail=request.getParameter("useremail");
		String userpassword=request.getParameter("userpassword");
		Session s=FactoryProvider.getFactory().openSession();
		Query query=s.createQuery("from User where useremail=:useremail and userpassword=:userpassword");
		query.setParameter("useremail", useremail);
		query.setParameter("userpassword", userpassword);
		User user=(User)query.uniqueResult();
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		if(user!=null) {
			HttpSession hs=request.getSession();
			hs.setAttribute("currentUser", user);
			response.sendRedirect("Home.jsp");
			
		}
		else {
			HttpSession hs=request.getSession();
			Message m=new Message("Sorry No user found !","error","danger");
			hs.setAttribute("msg", m);
			response.sendRedirect("Login.jsp");
			
		}
		
	}

}
