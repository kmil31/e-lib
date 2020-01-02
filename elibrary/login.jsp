<html>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel="stylesheet" href="style.css">

             <style>

             body {
              background-image: url("background1.jpg");
             background-attachment: absolute;
             background-size: 100% 100%;
             background-repeat: repeat-y;
             }
             </style>


<head>
       <%@ page session="true"%>

       <% session.removeAttribute("username");
          session.removeAttribute("password");
          session.removeAttribute("role");
           %>
</head>


<body>


    <div class="bg-image"></div>

<div class="center">

      <form action="validate" method="POST">

        <h1 class="spinny"> LOGIN PAGE </h1>
            <br>
        <h3> Username </h2>
        <input  type="text" name ="username" ></br>
        <h3> Password </h2>
        <input  type="password" name="password" >
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
</div>









</body>
</html>