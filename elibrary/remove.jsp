<html>
<style>
    
body {
              background-image: url("background1.jpg");
              background-repeat: no-repeat;
  background-attachment: fixed;
             }

    </style>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel="stylesheet" href="style.css">

<%@ page session="true"%>
		<% session=request.getSession();
         if(session.getAttribute("user")==null)
         {
          session.setAttribute("error","U ARE NOT LOGGED IN DUDE");
          response.sendRedirect("login.jsp");
         } %>


         <title> Remove Page </title>

         <body>

            


            
<div class="provided">
         	<h1> REMOVE A BOOK </h1>
</div>
<div class="box3">
         		<form action="remove" method="POST">

         			<h3 style="color:black"> Book ID 
         				<input type="number" name="bookid" required>

         			</h3>
<br>
         			<input type="submit" value="submit" style="font-size:20px;" required>


         		</form>
                <br>

                <a href='display.jsp'>Go back to mainpage </a>

</div>
         </body>



</html>