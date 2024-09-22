<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tourist form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body style="margin-top: 35px;">
    <div class="container">
    <h1 class="display-4" style="color: rgb(248, 132, 0);">Tourist Guide Form</h1>
    <hr>
    <table>
    <tr>
        <td style="padding-right:46px">
        <img src="images/tourist.gif "height="480px" class="rounded">
        </td>
        <td>
            <form action="AddTourist" method="post">
             <table>
                <tr>
                    <td>LocationName</td>
                    <td><input type="text" name="LocationName" required autocomplete="off" class="form-control"></td>
                </tr>
            <tr>
                <td>City</td>
                <td><input type="text" name="City" required autocomplete="off" class="form-control"></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><input type="text" name="Country" autocomplete=" off" required class="form-control"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><select name="Description" class="form-control">
                    <option selected>Vacation</option>
                    <option value="Job purpose">Job purpose</option>
                    <option value="career opportunity">career opportunity</option>
                    <option value="cultural understanding">cultural understanding</option>
                </select></td>
            </tr>
            <tr>
                <td>AverageRating</td>
                <td><input type="text" name="AverageRating" required autocomplete="off" class="form-control"></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit" class="btn btn-primary"></td>
            </tr>
            
            <tr>
                <td><a href="TouristEnquiry.html"><img src="images/enquiry.gif" height="50px"></a></td>
            </tr>
             </table>
            
            </form>
          
        </td>
    </tr>
   
    </table>
    <hr>
    <center>Developed BY OM&copy; 2024</center>








































    
</html>