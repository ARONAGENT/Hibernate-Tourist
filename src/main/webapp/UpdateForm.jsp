

<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.om.entities.TouristLocations"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body style="margin-top: 35px;">
<div class="container">
    <%
    int LocationID=Integer.parseInt(request.getParameter("LocationID"));

    HttpSession ses=request.getSession(true);
 	ses.setAttribute("LocationID",LocationID); 
    %>
  <h1 class="display-4" style="color: brown;">Update Tourist</h1><br> 
   <h5 style="color: brown;"> for locid :<%=LocationID %></h5>
 <hr>
    <table>
        <tr>
            
            <td>
                <form action="UpdateSuccess.jsp" method="post">
                 <table>
                 <tr>
                     <td>For LocationID</td>
                     <td><input type="number" name="LocationID" id="disabledInput"  placeholder=<%=LocationID %> disabled>
    </td>                
                 </tr>
                    <tr>
                        <td>Location Name</td>
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
                    <td><input type="submit" value="Update" class="btn btn-primary"></td>
                </tr>
                 </table>
                 
                </form>
              
            </td>
        </tr>
       
        </table>
      
       
      
        <hr>
        <a href="UpdateTourist.jsp"><button type="button" class="btn btn-info">Back</button></a>
        </div>
</body>
</html>