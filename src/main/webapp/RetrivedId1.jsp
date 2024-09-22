<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.rohan.hibernate.entities.TouristLocations"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Id Information </title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
<div class="container">
<h1 class="display-4"style="color:blue">
Searching By Id
</h1>

<table class="table table-bordered table-hover">
<th>Location Name
<th>City
<th>Country
<th>Description
<th>Averagerating



<%   

		int id=Integer.parseInt(request.getParameter("id"));
		TouristLocations t= new TouristLocations();
		t.setLocationid(id);
		
		Configuration cfg=new Configuration().configure();
		 SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
		 Session ses=sf.getCurrentSession();
		 ses.beginTransaction();


		 Query<TouristLocations> q=ses.createQuery("from TouristLocations where locationid=:p1");
		 q.setParameter("p1",id);
		 List <TouristLocations> list=q.getResultList();
		 if(list.size()==1)
		 {
		 	t=list.get(0);
		 	%>
		 	<tr>
		 	<td><%=t.getLocationname() %></td>
		 	<td><%=t.getCity() %></td>
		 	<td><%=t.getCountry() %></td>
		 	<td><%=t.getDescription() %></td>
		 	<td><%=t.getAveragerating() %></td>
		 	</tr>
		 	<%
		 }
		 else
		 {
		 	out.println("<h4 class='display-4'>Invailed id<h4>");
		 }

		 %>
		 </table>
		  <a href="index.html"><button type="button" class="btn btn-outline-primary">Home</button></a> 
		
		 </div>
</body>
</html>