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


import com.om.entities.TouristLocations;


/**
 * Servlet implementation class AddTourist
 */
public class AddTourist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTourist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     
		
		String LocationName, City, Country, Description, AverageRating;
		
		
		LocationName=request.getParameter("LocationName");
		City=request.getParameter("City");
		Country=request.getParameter("Country");
		Description=request.getParameter("Description");
		AverageRating=request.getParameter("AverageRating");
		
		TouristLocations tl=new TouristLocations();
		
		tl.setLocatioName(LocationName);
		tl.setCity(City);
		tl.setCountry(Country);
		tl.setDescription(Description);
		tl.setAverageRating(AverageRating);
		
		Configuration cfg=new Configuration().configure();
		SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
	    Session ses=sf.getCurrentSession();
	    ses.beginTransaction();
	    
	    ses.persist(tl);
	    ses.getTransaction().commit();
	    ses.close();
	   
	    System.out.println("Inserted....");
	  response.sendRedirect("TouristAdded.jsp");
	    }

}
