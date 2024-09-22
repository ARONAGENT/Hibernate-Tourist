<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body style="margin-top: 35px;">
    <div class="container">
    <h1 class="display-4" style="color: red;">Delete tourist</h1>
    <hr>
    <br>
    <br>

    <table>
        <form method="post" action="TouristDeleted" >
        <tr>
            <td>LocationID</td>
            <td><input type="number" name="LocationID" class="form-control" autocomplete="off" required></td>
            <td><input type="submit" value="Delete" class="btn btn-danger"></td>
        </tr>
    </form>
    </table>
    <br>
    <br>
    <br>
    <a href="TouristEnquiry.html"><button type="button" class="btn btn-info">Back</button></a>
    
   
</div>

</body>
</html>