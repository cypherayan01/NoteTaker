package com.servlets;

import com.entities.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Transaction;

import org.hibernate.Session;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException {
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			String username=request.getParameter("username");
			Note note =new Note(title,content,username,new Date());
			System.out.println(note.getId()+" : "+note.getTitle());
			
			//hibernate save			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(note);
			
			tx.commit();
			s.close();
			HttpSession hs=request.getSession();
			Message m=new Message("Data added successfully..","success","success");
			hs.setAttribute("msg", m);
			response.sendRedirect("add_notes.jsp");
			/*
			 * response.setContentType("text/html"); PrintWriter out=response.getWriter();
			 * out.println("<h1 style='text-align:center'>Note is added Successfully.</h1>"
			 * ); out.
			 * println("<h1 style='text-align:center'><a href='all_notes.jsp'>View all Notes</a></h1>"
			 * );
			 */
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
