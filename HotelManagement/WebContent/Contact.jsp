<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact page</title>
<style type="text/css">
body{
    background: #e5e5e5;
    margin: 0px;
}
.container{
    width: 780px;
    background:#c9ddff;
    margin: 0 auto;
    box-shadow: 5px 5px 5px 5px;
    
}
 #form{
    
    width: 565px;
    border: 2px solid black;
    padding: 10px 10px 10px 10px;
    margin: 0 auto;
    box-shadow: 5px 10px 13px 1px;
}
 #form input{
    
        width: 100%;
    border-radius: 4px;
    height: 20px;
    background: #d6d6d6;
}
 #form #message{
    width: 100%;
    border-radius: 4px;
    background: #d6d6d6;
}
 #form #submit{
        height: 30px;
    background: #49c2d4;
}
footer{
  width: 565px;
    border: 2px solid black;
    padding: 10px 10px 10px 10px;
    margin: 30px auto;
   
}
.header{
font-size: 30px;
text-decoration: none;
}
 .container .main h1{
 text-align: center;
 font-size: 50px;
}

</style>
</head>
<body>

   <%= new java.util.Date() %>
<div class="container">
        <header class="header">
        <a href="login.jsp">Hotel Dream Palace</a>
        </header>
        <article class=main>
            <h1 class="page-heading">Contact</h1>
            <div id="form">
                <form action="Contact">
                    <p>
                <label for="name">Name:</label>
                <input type="text" name="name" required>
                    </p>
                     <p>
                 <label for="email">Email:</label>
                <input type="text" name="email"  required>
                     </p>
                
                        
                    <p>
                 <label for="subject">Subject:</label>
                <input type="text" name="sub" required>
               </p>
                   <p>
                 <label for="name"></label>
               <textarea name="message" id="message" cols="30" rows="10"  required>
                </textarea>
                 </p>
                    <p>
                    <input  type="submit" value="send messege">
                    </p>
                </form>
                 
                
            
            </div>
            
            
            
              </article>
             
            
        <footer>
        
         &copy; 2030 Minimilistic website &nbsp; design by <span class="seprator">|</span> Payal Jasoriya
          
        </footer>
        </div>
</body>
</html>