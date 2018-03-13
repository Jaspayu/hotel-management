<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
<style type="text/css">
body{
background-image: url("picture/w2.jpg");
background-repeat: no-repeat;
background-size: auto; 

}
#container{
font-size: 100px;
font-weight: bolder;
color: #f7b655;
text-align: center;
}
#container input{
margin: 20px auto;
width: 150px;
height: 50px;
border-radius: 5px;
}

</style>
</head>
<body>

<%
HttpSession ss=request.getSession(false);
String name=(String)(ss.getAttribute("un"));
%>
<div id="container">
Welcome <%out.print(name);%><br>

<form action="AvailibleRoom.jsp">
<input type="submit" value="Book My Room" name="b1">
</form>
<form action="MyBookings.jsp">
<input type="submit" value="My Bookings" name="b2">
</form>
<form action="Updatepwd.jsp">
<input type="submit" value="Change Passwprd" name="b3">
</form>
<form action="login.jsp">
<input type="submit" value="Logout" name="b3">
</form>
</div>
</body>
</html>