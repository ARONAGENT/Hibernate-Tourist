<%@page import="org.hibernate.Session"%>

<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>

<body style="margin-top: 35px;">
    <div class="container">
<h1 class="display-4" style="color: blueviolet;"> Search Tourist</h1>
<hr>
<br>
<br>
<table>
    <form method="post" action="SearchResult.jsp">
    <tr>
        <td>LocationID</td>
        <td><input type="number" name="LocationID" class="form-control" autocomplete="off" required></td>
        <td><input type="submit" value="Search" class="btn btn-primary"></td>
    </tr>
</form>
</table>
<br>
<br>

<a href="index.jsp"><button type="button" class="btn btn-info">Home</button></a>



 </div>
</body>
</html>