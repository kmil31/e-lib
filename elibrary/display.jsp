<%@ page import="java.sql.*" %>
<%@ page session="true"%>


<HTML>

<style>

             body {
              background-image: url("background1.jpg");
             background-attachment: absolute;
             background-size: 100% 100%;
             background-repeat: repeat-y;
             }
             </style>

 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
         <link rel="stylesheet" href="style.css">

    <HEAD>
      <% session=request.getSession();

         if(session.getAttribute("user")==null)
         {
          session.setAttribute("error","U ARE NOT LOGGED IN DUDE");
          response.sendRedirect("login.jsp");
         } %>
        <TITLE>E Library</TITLE>
    </HEAD>

    <BODY>
      <br>
      <div class="provided">
        <H1 ">BOOKS THAT ARE PROVIDED </H1>
        <br>
      </div>
<br>
<div class="box">

        <% 
          
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from books") ; 
        %>
<br><br>
 
        <TABLE BORDER="1">
            <TR>
                <TH>Book ID</TH>
                <TH>Name</TH>
                <TH>Author</TH>
                <TH>Genre</TH>
                <TH>Quantity</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
            </TR>
            <% } 
          
            
            %>
 
            </TD>
</TR></TABLE>

</div>
          
        </TABLE>
    
          
          <div class="box2">
<a href='login.jsp'><button>Back to login</button></a>

          <% if(session.getAttribute("role").equals("admin"))
          {
            out.println("<a href='add.jsp'><button>Add a book</button></a>");
             out.println("<a href='remove.jsp'><button>Delete a book</button></a>");
              out.println("<a href='view.jsp'><button> View borrowed</button></a>");
          }
              else
              {
              out.println("<a href='return.jsp'><button>Return your book</button></a>");
              out.println("</br></br></br></br>");


          /*    out.print("<h1>Which book do you wanna borrow?</h1>");
              out.print(
              "<form action='add' method='POST'>");
                out.print( "<h3>Book name</h3><input type='text' value='Book Name' name='bookname'>");
                  out.print("<h3>Amount to borrow?</h3><input type='number' min=0 name='quant'>  </form>");
                out.println("<input type='submit' value='Submit'>");  
              
             */ %>
</div>
<div class="box">
             <h2> What do you want to borrow? </h2>
             <form action='borrow' method='POST'>
              <h3 style="color:black;" >Book name</h3>
                <input type="text" name='bookname' required >
              <h3 style="color:black";>Quantity to borrow?</h3>
                <input type="number" min=0; name='quant' required>
                <br><br>
                <input type="submit" value='Submit' style="font-size:20px;">
                </div>
                <%

              }

/*
            if(session.getAttribute("badmessage")!=null) 
             {
              out.println(session.getAttribute("badmessage"));
              
             }
             if(session.getAttribute("goodmessage")!=null)
             {
              out.println(session.getAttribute("goodmessage"));

             }
              session.removeAttribute("goodmessage");
              session.removeAttribute("badmessage");*/
              %>

              





    </BODY>
</HTML>