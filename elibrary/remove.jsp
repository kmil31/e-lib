<html>
<%@ page session="true"%>
		<% session=request.getSession();
         if(session.getAttribute("user")==null)
         {
          session.setAttribute("error","U ARE NOT LOGGED IN NIGGA");
          response.sendRedirect("login.jsp");
         } %>


         <title> Remove Page </title>

         <body>

         	<h1> Remove a book </h1>

         		<form action="remove" method="POST">

         			<h3> Book ID 
         				<input type="number" name="bookid" required>

         			</h3>

         			<input type="submit" value="submit" required>

         		</form>

                <a href='display.jsp'>Go back to mainpage </a>


         </body>



</html>