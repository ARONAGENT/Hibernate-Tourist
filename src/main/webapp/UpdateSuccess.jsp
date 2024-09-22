<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.om.entities.TouristLocations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body style="margin-top: 35px;">
    <div class="container">
    <% String LocationID=String.valueOf(session.getAttribute("LocationID"));%>
    
      <%
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
	    
	  
	    Query<TouristLocations> q=ses.createQuery("update TouristLocations set LocationName=:l1,City=:l2,Country=:l3,Description=:l4,AverageRating=:l5 where LocationID=:loc");
	    q.setParameter("l1", LocationName);
	    q.setParameter("l2",City);
	    q.setParameter("l3",Country);
	    q.setParameter("l4",Description);
	    q.setParameter("l5",AverageRating);
	    q.setParameter("loc",LocationID);
	    int cnt=q.executeUpdate();
	
	if(cnt>0)
	{
		ses.getTransaction().commit();
		out.println("<h4 class='display-4'style='color:green'>Update successfully<h4>");
	
	}
	else
	{
		
		out.println("<h4 class='display-4'style='color:red'>Invalid Id<h4>");

	}
	
		ses.close();
		
 %>
    
<hr>
<a href="UpdateTourist.jsp"><button type="button" class="btn btn-info">Home</button></a>
</div>
</body>
</html>