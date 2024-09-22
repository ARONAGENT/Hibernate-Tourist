<%@page import="com.rohan.hibernate.entities.TouristLocations"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>

<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>s result</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body style="margin-top: 35px;">
<div class="container">
    <h1 class="display-4" style="color: rgb(4, 176, 4);">Search Result/h1>
<hr>
<%
int LocationID=Integer.parseInt(request.getParameter("LocationID"));


Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(TouristLocations.class).buildSessionFactory();
Session ses=sf.getCurrentSession();
ses.beginTransaction();

Query<TouristLocations> q=ses.createQuery("from TouristLocations where LocationID=:l1");
q.setParameter("l1", LocationID);
List<TouristLocations> list=q.getResultList();

TouristLocations tl;
if(list.size()==1)
{

	tl=list.get(0);
	%>
	<table class="table table-primary " >
	
     <tr>
           <td><th>LocationID</th></td>
            <td><%=tl.getLocationID() %></td>

     </tr> 
     <tr>
     <td><th>Location Name</th></td>
     <td><%=tl.getLocationName() %></td>
     </tr>  
      <tr>
          <td><th>City</th></td>
        <td><%=tl.getCity() %></td>
      </tr>
        <tr>
            <td><th>Country</th></td>
            <td><%=tl.getCountry() %></td></tr>
        <tr>
            <td><th>Description</th></td>
            <td><%=tl.getDescription() %></td>
       </tr>
      <tr>
             <td><th>AverageRating</th></td>
            <td><%=tl.getAverageRating() %></td>
       </tr>
    
    
	</table>
	<%
}
else
{
	response.sendRedirect("TouristNotFound.jsp");
}

ses.close();
%>

<hr>
<a href="SearchTourist.jsp"><button type="button" class="btn btn-info">Back</button></a>

</div>

</body>
</html>