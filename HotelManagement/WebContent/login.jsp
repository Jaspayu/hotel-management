<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login page</title>

<style type="text/css">
body{
background-color:#a2797e;

}
#myBtn{
width: 100px;

}

#links{

float: right;
margin-bottom: 20px;
background-color: #4CAF50;
border-radius:10px;
position: sticky;
    top: 0;
    

}
#links a{

boarder: 2px solid black;
width:900px;
font-size: 20px;
color:white;
margin-left:5px;
text-decoration: none;
}
#links a:hover{
    color: orange;
    font-size: 25px;
  position: sticky;
  top: 0;
   
}
h1{
margin-top:2px;
text-align: center;
font-family: sans-serif;
font-size: 70px;
font-style: italic;
color:#9220a6;
animation-name: move;
animation-duration: 5s;
font-size: 50px;
text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
animation-iteration-count: infinite;
}
@keyframes move {
   0% {color: aqua; }
    50%{color: chartreuse;}
   100% {color:#ea6981; l}
}
#image{

margin-top: 20px;
}
#about,#container{
margin: 40px auto;
font-size:20px;
}
#about h2,#container h2{
color: purple;
margin: 40px auto;
}
#about a{
 color:teal;
text-decoration: none;
}
#container{
margin:20px auto;
}
#container label,input{
margin: 10px 10px 10px 10px;
font-size: large;
border-radius: 5px;
}
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 400px;
    top: 100px;
    width: 60%;/* Full width */
    height: 50% ;/* Full height */
    overflow:hidden; /* Enable scroll if needed */
    background-color: orange; /* Fallback color */
    background-color: teal; /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 15% auto; /* 15% from the top and centered */
    padding: 15px;
    border: 1px solid black;
    width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
input[type=text], input[type=password] {
    width: 100%;
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
    padding:5px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
   border-radius:10px;
    position: sticky;
    top: 0;
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
    background-color: #b8cf94;
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
    width: 50%; /* Full width */
    height: 100%; /* Full height */
    margin-left:350px;
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
/*icons*/
.fa {
  padding: 10px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
 
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}


.fa-instagram {
  background: #125688;
  color: white;
}


</style>
</head>
<body >
<h1>Hotel Dream Palace</h1>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="Login">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    
    </div>

    <div class="container">
      <label><b>User Id</b></label>
      <input type="text" placeholder="Enter User Id" name="n1" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="p1" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
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

</div>
<div id="links">
<a href="login.jsp">Home</a>&nbsp; &nbsp; &nbsp;
<a href="Registration.jsp">Registration</a>&nbsp; &nbsp; &nbsp;
<a href="PreviewRoom.jsp">Preview Rooms</a>&nbsp; &nbsp; &nbsp;
<a href="ourservice.jsp">Our services</a>&nbsp; &nbsp; &nbsp;
<a href="FoodCategory.jsp">Food Category</a>&nbsp; &nbsp; &nbsp;
<a href="AboutUs.jsp">About Us</a>&nbsp; &nbsp; &nbsp;
<a href="Contact.jsp">Contact Us</a>&nbsp; &nbsp; &nbsp;
</div>
<div id="image">
<img class="mySlides" src="picture/w4.jpg" width="1400px" height="450px">
<img class="mySlides" src="picture/w1.jpg" width="1400px" height="450px">
<img class="mySlides" src="picture/w2.jpg" width="1400px" height="450px">
<img class="mySlides" src="picture/w3.jpg" width="1400px" height="450px">

</div>
<div id="about">
<p><h2 align="center" >THE GROUP OF HOTEL DREAM PALACE </h2>
The Hotel Dream Palace  has the benefit of an exceptionally loyal and long-serving staff-many have been with the company for decades and 
it's not unusual to find several generations of the same family working together, welcoming and serving innumerable generations of Guest at our Units.
<a href="AboutUs.jsp">READ MORE</a>
</p>
</div>
<div id="container">
<P>
<h2 align="center" >FOR BOOKING </h2>
<strong>NOTE:-</strong>Please make sure that you have registerd earlier and login with your id and password <big><i>Thank You</i></big>

</P>


</div>

<script type="text/javascript">


//slide show of images
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
   for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 5000); // Change image every 2 seconds
}



</script>
<!-- Add font awesome icons -->
<a href="https://www.facebook.com/payal.jasoria.1" target="-blank" class="fa fa-facebook"></a>

<a href="#" class="fa fa-google"></a>
<a href="https://www.linkedin.com/in/payal-jasoriya-62297b126" target="-blank" class="fa fa-linkedin"></a>

<a href="https://www.instagram.com/payaljasoriya/" target="-blank" class="fa fa-instagram"></a>


</body>
</html>