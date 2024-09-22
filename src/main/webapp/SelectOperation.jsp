<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
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
<title>Select Operation</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
	<div class="container">
	<h1 class="display-4"style=color:green>All Tourist Applicants</h1>
	<hr>
	<table class="table table-bordered table-hover table-info">
	 <th> Id
	 <th> Location Name
	 <th> City
	 <th> Country
	 <th> Description
	 <th> Rating
	 
<%
	Configuration cfg=new Configuration().configure();
	SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
	Session ses=sf.getCurrentSession();
	 ses.beginTransaction();
	TouristLocations t;

	 Query<TouristLocations> q=ses.createQuery("from TouristLocations");
	 List <TouristLocations> list=q.getResultList();
	 out.println(list.size());
	  
	 for(int i=0;i<list.size();i++)
	 {
		
		 t=list.get(i);
	%><tr>
	 <td><%=t.getLocationid() %>
	 <td><%=t.getLocationname() %>
	 <td><%=t.getCity() %>
	 <td><%=t.getCountry() %>
	 <td><%=t.getDescription() %>
	 <td><%=t.getAveragerating() %>
	 </tr>
	 <%
 }
%>
 </table> 
 <hr>
 <a href="index.html"><button type="button" class="btn btn-outline-primary">Home</button></a>
</div>
</body>
</html>