<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
<form action="submitform" method="post">
<label>Name :
<input type="text" placeholder="Enter your Name" name="name1">
</label>
<br> <br>
<label>Email :
<input type="email" placeholder="Enter your Email" name="email1">
</label>
<br> <br>
<label>Password :
<input type="password" placeholder="Type your Password" name="pass1">
</label>
<br> <br>
Gender :
<input type="radio"  name="Gender" value="Male" > Male
<input type="radio"  name="Gender" value="Female"> Female
<br> <br>
City:
<select name="city1">
<option>Select City </option>
<option> Gorakhpur </option>
<option> Lucknow </option>
<option> Deoria </option>
<option> Azamgarh </option>
<option> Basti </option>
<option> Jaunpur </option>
</select>
<br> <br>
<input type="submit"  value="Register">

</form>
</body>
</html>