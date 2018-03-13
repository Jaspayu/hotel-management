<%@page import="code.Roomlist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="code.DataBaseMethod"%>
<%@page import="java.sql.DatabaseMetaData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room List</title>
<style type="text/css">
body{
background-image: url("picture/w7.jpg");
}
#table{
border: 2px solid black;
background-color:#b66e60;
margin: 15%;
padding:1%;
margin-bottom:10px;
font-size: 20px;
 box-shadow: 5px 10px black;
border-radius:10px;
}
#btn input{
margin-left: 15%;
margin-top: 40px;
width: 150px;
height: 50px;
border-radius:10px;
font-style:italic;
font-size: 20px;
background-color:white;
}

</style>
</head>
<body>
<%
DataBaseMethod db=new DataBaseMethod();
ArrayList<Roomlist> rlist= db.getroomlist();
%>
<form action="BookedRom">
<table border="2px" id="table">
<tr>
<td><b>Room No.</b></td>
<td><b>Type Of Room</b></td>
<td><b>Price</b></td>
<td><b>Status</b></td>
<td><b>Booking</b></td>
</tr>
<%
for(Roomlist r:rlist)
{
%>
<tr>
<td><input type="text" value="<%=r.getRno()%>" name="book"></td>
<td><input type="text" value="<%=r.getType()%>"  ></td>
<td><input type="text" value="<%=r.getRs()%>"></td>
<td><input type="text" value="<%=r.getSts()%>"></td>
<td><input type="checkbox" value="<%=r.getRno()%>" name="room"></td>
</tr>
<%
}
%>
</table>
<div id="btn">
<input type="submit" value="Book My Room">
</div>
</form>
</body>
</html>