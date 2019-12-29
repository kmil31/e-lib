<html>

	<%@ page session="true"%>

	<% session=request.getSession();
         if(session.getAttribute("user")==null)
         {
          session.setAttribute("error","U ARE NOT LOGGED IN NIGGA");
          response.sendRedirect("login.jsp");
          out.println(session.getAttribute("wrong"));
         } %>


         <title>adding page</title>

         <body>

         	<form action="add" method="POST">
            	
            	BookID<input type="text" name="bookid" required> 
         		BookName<input type="text" name="bookname" required>
         		Author<input type="text" name="author" required> 
         		Genre<input type="text" name="genre" required> 
         		Quantity<input type="number" name="quant" min='0' required> 


         		<input type="submit" value="submit">

         	</form>	
         		

            <a href='display.jsp'> Back to mainpage </a>





         </body>












</html>