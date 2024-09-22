<%@page import="com.rohan.hibernate.entities.TouristLocations"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
<div class="container">
<%
try{
 String locationname,city,country,description; 
 float averagerate;
 locationname=request.getParameter("locationname");
 city =request.getParameter("city");
 country=request.getParameter("country");
 description =request.getParameter("description");
 averagerate=Float.parseFloat(request.getParameter("averagerate"));
 
 TouristLocations t=new TouristLocations();
 t.setLocationname(locationname);
 t.setCity(city);
 t.setCountry(country);
 t.setDescription(description);
 t.setAveragerating(averagerate);
 

 Configuration cfg=new Configuration().configure();
 SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
 Session ses=sf.getCurrentSession();
 ses.beginTransaction();

  ses.persist(t);
  ses.getTransaction().commit();
  ses.close();
  out.println("<h4 class='display-4'style=color:green>Insert operation successfully</h4>");
  out.println("<hr>");
}
catch(Exception e)
{
	out.println(e);
	out.println("<br><a href='InsertOpeartion.html'><button type='button' class='btn btn-warning'>Edit Form</button>");
}
 %>
 <br>
 <hr>
<img src="images/1.gif" height=250px; class="rounded"alt="img">
<img src="images/4.gif" height=250px; class="rounded"alt="img">
<img src="images/3.gif" height=250px; class="rounded"alt="img">
<br><br>
 <a href="index.html"><button type="button" class="btn btn-outline-primary">Home</button></a>
 <br>
</div>
</body>
</html>