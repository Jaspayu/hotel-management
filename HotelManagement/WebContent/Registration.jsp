<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
  body{
  background-image: url("picture/hotels-7.jpg");
 background-repeat: no-repeat;
background-size:cover;
  }
  h1{
  font-size: 70px;
  text-align: center;
  font-weight: 100;
  color: white;
  }
  #container{
   padding:40px 40px 40px 40px;
  background-color:brown;
  border: 2px black solid;
  width:40%;
  height:50%;
  margin: 50px auto;
box-shadow: 5px 5px 5px 5px black;
color: white;
  }
  #container input{
 width: 100%;
  border-radius:10px;
  background-color:white;
 height: 30px;
 color: black;
  }
  
</style>
</head>
<body>

<h1>Registration</h1>
<div id="container">
   <form action="Register">
   <label>Name:</label><br>
   <input type="text" name="n1"><br>
   <label>Email:</label><br>
   <input type="text" name="e1"><br>
   <label>Password:</label><br>
   <input type="password" name="p1"><br>
   <label>Confirm Password:</label><br>
   <input type="password" name="p2"><br>
   <br>
   <input type="submit" value="Register"><br>
   <br>
    <input type="reset" value="Reset"><br>
       
   </form>
  </div>
    
  
</body>
</html>