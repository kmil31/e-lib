<html>

<head>
	   <%@ page session="true"%>

       <% session.removeAttribute("username");
          session.removeAttribute("password");
          session.removeAttribute("role");
           %>

</head>


<body>

	  <form action="validate" method="POST">

     	<h1> LOGIN PAGE </h1>
        <h2> Username </h2>
        <input type="text" name ="username" ></br>
        <h2> Password </h2>
        <input type="text" name="password">
    </br>
        <% 
        if(session.getAttribute("error")==null)
        {
            
        }
        else{
            out.println(session.getAttribute("error")); 
        }
         session.removeAttribute("error");
        %>
    </br>
        

        <input type="submit" value="Submit">


     </form>









</body>
</html>
