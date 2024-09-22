<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.rohan.hibernate.entities.TouristLocations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Opeartion</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<body style="margin-top:35px">
<div class="container">
<%try
{
String id=String.valueOf(session.getAttribute("id"));
String locationname,city,country,description;
float averagerating;
locationname=request.getParameter("locationname");
city=request.getParameter("city");
country=request.getParameter("country");
description=request.getParameter("description");
averagerating=Float.parseFloat(request.getParameter("averagerating"));

TouristLocations t=new TouristLocations();
t.setLocationname(locationname);
t.setCity(city);
t.setCountry(country);
t.setDescription(description);
t.setAveragerating(averagerating);

Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
Session ses=sf.getCurrentSession();
ses.beginTransaction();
 

Query<TouristLocations> q=ses.createQuery("update TouristLocations set locationname=:p1, city=:p2, country=:p3, description=:p4, averagerating=:p5 where locationid=:p6");
q.setParameter("p1",locationname);
q.setParameter("p2",city);
q.setParameter("p3",country);
q.setParameter("p4",description);
q.setParameter("p5",averagerating);
q.setParameter("p6",id);

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
}
catch(Exception e)
{
	out.println("<h4 class='display-4'style='color:red'>Invalid input <h4>");
}
%>
<hr>
<img src="images/1.gif" height=250px; class="rounded"alt="img">
<img src="images/4.gif" height=250px; class="rounded"alt="img">
<img src="images/3.gif" height=250px; class="rounded"alt="img">
<hr>
 <a href="index.html"><button type="button" class="btn btn-outline-primary">Home</button></a></div>
</body>
</html>