<%@page import="code.Bookinglist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="code.DataBaseMethod"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Bookings</title>
<style type="text/css">
body{
background-image: url("picture/w3.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
}
.table{
border: 2px solid black;
background-color:#9f9d9e;

padding:1%;
margin-bottom:10px;
font-size: 20px;
 box-shadow: 10px 10px #0d0d0e;
border-radius:10px;
 
}
</style>
</head>
<body>
<%
HttpSession ss=request.getSession(false);
String uid=(String)(ss.getAttribute("uid"));
DataBaseMethod db=new DataBaseMethod();
ArrayList<Bookinglist> blist=db.getbooking(uid);

%>
<div class="table">
<table border="2px">
<tr>

<td><b>Uid</b></td>
<td><b>Name</b></td>
<td><b>Email</b></td>
<td><b>address</b></td>
<td><b>contact</b></td>
<td><b>person</b></td>
<td><b>check in</b></td>
<td><b>check out</b></td>
</tr>
<%
for(Bookinglist b:blist)
{
%>
<tr>
<td><input type="text" value="<%=b.getUid()%>" ></td>
<td><input type="text" value="<%=b.getName()%>"></td>
<td><input type="text" value="<%=b.getEmail()%>" ></td>
<td><input type="text" value="<%=b.getAddress()%>"></td>
<td><input type="text" value="<%=b.getContact()%>"></td>
<td><input type="text" value="<%=b.getPerson()%>" ></td>
<td><input type="text" value="<%=b.getCheckin()%>"></td>
<td><input type="text" value="<%=b.getCheckout()%>"></td>
</tr>
<%
}
%>
</table>

<form action="Welcome.jsp">
<input type="submit" value="OK">
</form>
</div>
</body>
</html>