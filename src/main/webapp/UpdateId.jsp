<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updation</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<body style="margin-top:35px">
<div class="container">
<%
int id;
id=Integer.parseInt(request.getParameter("id"));
HttpSession ses=request.getSession(true);
ses.setAttribute("id", id);
out.println("<h5 class='display-6'style='color:darkorange'>Your Id : "+id+"</h5>");
out.println("<hr>");
%>
<form action="Update.jsp" method="post">
<table>
		<tr>
			<td> Set Location Name</td>
			<td><input name="locationname" type="text"class="form-control"required autocomplete="off"></td>
		</tr>
		<tr>
			<td> Set City </td>
			<td><input name="city" type="text"class="form-control"required autocomplete="off"></td>
		</tr>
		<tr>
			<td> Set Country</td>
			<td><input name="country" type="text"class="form-control"required autocomplete="off"></td>
		</tr>
		<tr>
			<td> Set Description</td>
			<td><input name="description" type="text"class="form-control"required autocomplete="off"></td>
		</tr>
		<tr>
			<td> Set Average Rating</td>
			<td><input name="averagerating" type="text"class="form-control"required autocomplete="off"></td>
		</tr>
		<tr>
			<td>Submit</td>
			<td><input name="submit" type="submit"class="btn btn-primary"></td>
		</tr>
	</table>

</form>
<hr>
 <a href="index.html"><button type="button" class="btn btn-outline-warning">Home</button></a>

</div>
</body>
</html>