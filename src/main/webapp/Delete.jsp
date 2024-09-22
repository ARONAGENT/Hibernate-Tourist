<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.rohan.hibernate.entities.TouristLocations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deletion page </title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
<div class="container">
<%
int id=Integer.parseInt(request.getParameter("id"));
TouristLocations t=new TouristLocations();
t.setLocationid(id);
Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
Session ses=sf.getCurrentSession();
ses.beginTransaction();

Query<TouristLocations> q;
q=ses.createQuery("delete from TouristLocations where locationid=:p1 ");
q.setParameter("p1",id);

int cnt=q.executeUpdate();
ses.getTransaction().commit();

if(cnt>0){
 out.println("<h1 class='display-4'style=color:orange> Deletion successfully</h1");
 out.println("<br>");
	out.println("<a href='index.html'><button type='button' class='btn btn-primary'>Home</button>");

}
else{
 out.println("<h1 class='display-4'style=color:red> Deletion failed </h1>");
 out.println("<br>");	
 out.println("<a href='index.html'><button type='button' class='btn btn-primary'>Home</button>");
}
%>
<hr>
<img src="images/1.gif" height=250px; class="rounded"alt="img">
<img src="images/4.gif" height=250px; class="rounded"alt="img">
<img src="images/3.gif" height=250px; class="rounded"alt="img">
</div>
</body>
</html>