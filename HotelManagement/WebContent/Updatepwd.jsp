<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Password</title>
<style type="text/css">
body{
background-color: #4ec9b8;
}
.table{
border: 2px solid black;
margin: 13%;
padding:1%;
margin-bottom:10px;
font-size: 20px;
 box-shadow: 10px 10px #0d0d0e;
border-radius:10px;
}
input {
	width: 60%;
	
}
h1
{
font-size: 50px;
margin-left: 500px;

}
.btn{
margin-top: 20px;
width: 100px;
position: center;
}
</style>
</head>
<body>
<h1>Update Password</h1>
<div class="table">

<form action="Updatepwd">

<label>Enter your old password</label>
<br>
<input type="password" name="old">

<br>
<label>enter your new password</label><br>
<input type="password" name="new"><br>

<label>confirm password</label><br>
<label><input type="password" name="cnfm"></label>
<br>


<input type="submit" value="OK" class="btn">
</form>
</div>
</body>
</html>