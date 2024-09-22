<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Id</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
	<div class="container">
	<h1 class="display-4"style="color:darkcyan"">Search Operation</h1>
	<hr>
	<table>
	<form action="RetrivedId1.jsp" method="post">
	<tr>
	<td>Enter Id</td>
    <td><input type="text"name="id" class="form-control"required autocomplete="off"></td> 
    <td><input name="submit" type="submit"class="btn btn-primary"></td>
	</tr>
	</table>
	</form>
	<br>
	 <a href="index.html"><button type="button" class="btn btn-outline-primary">Home</button></a>
	
	</div>
</body>
</html>