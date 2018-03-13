<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form</title>
<style>
body{
background-image: url("picture/w2.jpg");
background-attachment: fixed;
}
/* Full-width input fields */
input, select {
    width:100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
   background-color:#83b89d;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
.form {
width: 80%;
margin: 20px;


}
.border{
border:2px solid black;
margin: 10%;
background-color: #c5c3c3;
width: 60%;
}
</style>
</head>
<body>
<div class="border">
<div class="form">
<form action="Form">
<label>Name:</label><br>
<input type="text" name="n1" placeholder="Enter Name"> <br>

<label>Email:</label><br>
<input type="email" name="e1" placeholder="Enter Email"><br>

<label>Address:</label><br>
<input type="text" name="a1" placeholder="Enter Address"><br>

 <label>Contact No:</label><br>
 <input type="text" name="c1" placeholder="Enter Mobile No"><br>
   

<label>No. Of Person:</label><br>
<input type="text" name="p1" placeholder="Enter No. Of Person "><br>
 
<label>Check In date</label><br>
 <input type="date" name="cin"  placeholder="Enter Check In date"><br>
 
 <label>Check Out date</label><br>
 <input type="date" name="cout" placeholder="Enter Check Out date"><br>
 <br>
 <input type="submit" value="Book My Room"> 
</form>
</div>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Car service</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="carservice">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label><b>Enter Pick Up Location</b></label>
      <input type="text" placeholder="Enter Location" name="uname" required>

      <label><b>select car</b></label>
      <br>
      <select>
<option>Min</option>
<option>Micro</option>
<option>Prime</option>
<option>Auto</option>
<option>Rentals</option>
<option>Outstation</option>
<option>Lux</option>
<option>Shuttle</option>

</select>
        
      <button type="submit">Book my car</button>
      <label>
        
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>