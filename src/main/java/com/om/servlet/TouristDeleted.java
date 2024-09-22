package com.om.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;


import com.om.entities.TouristLocations;

/**
 * Servlet implementation class TouristDeleted
 */
public class TouristDeleted extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TouristDeleted() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		int LocationID=Integer.parseInt(request.getParameter("LocationID"));
	    
	    Configuration cfg=new Configuration().configure();
		SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
	    Session ses=sf.getCurrentSession();
	    ses.beginTransaction();
	    
	    Query<TouristLocations> q=ses.createQuery("delete from TouristLocations where LocationID=:l1");
	    q.setParameter("l1",LocationID);
	    
	    int cnt=q.executeUpdate();
	    ses.getTransaction().commit();
	    if(cnt==1)
	    {
	    	response.sendRedirect("DeleteSuccess.jsp");
	    }
	    else
	    {
	    	response.sendRedirect("TouristNotFound.jsp");
	    }
	    ses.close();
	    
	
	}

}
