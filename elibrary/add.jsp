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
          session.setAttribute("error","U ARE NOT LOGGED IN NIGGA");
          response.sendRedirect("login.jsp");
          out.println(session.getAttribute("wrong"));
         }
          %>
<
         <title>adding page</title>
         <div class="provided">
            <h1> ADD A BOOK </h1>
</div>

         <body>
<div class="box3">
         	<form action="add" method="POST">
            	
            	BookID<input type="text" name="bookid" required> 
         		BookName<input type="text" name="bookname" required>
         		Author<input type="text" name="author" required> 
         		Genre<input type="text" name="genre" required> 
         		Quantity<input type="number" name="quant" min='0' required> 

<br><br>
         		<input type="submit" value='Submit' style="font-size:20px;">

         	</form>	
            <a href='display.jsp'> Back to mainpage </a>
         		
</div>
            





         </body>












</html>