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
<title>City Rating</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
<div class="container">
<h1 class="display-5"style=color:darkmagenta>Tourist Rating According to City</h1>
<hr>
<table class="table table-bordered table-hover table-sm table-success">
<th> City
<th> Rating
<%
Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
Session ses=sf.getCurrentSession();
ses.beginTransaction();
 
Query<TouristLocations> q=ses.createQuery("from TouristLocations as city order by city.averagerating desc");
TouristLocations t;
 List <TouristLocations> list=q.getResultList();

for(int i=0;i<list.size();i++)
{
	t=list.get(i);
	%>
	<tr>
	<td><%=t.getCity() %></td>
	<td><%=t.getAveragerating() %></td>
	</tr>
	<% 
}
%>
</table>
	  <a href="index.html"><button type="button" class="btn btn-outline-primary">Home</button></a> 
</div>
</body>
</html>