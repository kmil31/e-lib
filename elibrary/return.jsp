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

        String user=(String)session.getAttribute("user");
         if(session.getAttribute("user")==null)
         {
          session.setAttribute("error","U ARE NOT LOGGED IN DUDE");
          response.sendRedirect("login.jsp");
         } %>
        <TITLE>E Library</TITLE>
    </HEAD>

    <BODY>
        <div class="provided">
        <H1>Books that <%out.println(user);%> has borrowed </H1>
    </div>

        <% 
            try{
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
            statement.executeQuery("select * from borrowed where user ='"+user+"'");
        %>
<div class="box">
    <br>
        <TABLE BORDER="1">
            <TR>
                <TH>Book ID</TH>
                <TH>Name</TH>
                <TH>User</TH>
                <TH>Borrow Date</TH>
                <TH>Return Date</TH>
                <TH>Quantity</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
            </TR>
            <% } 
          
            
            %>

            
          </div>
        </TABLE>
        <br>
          <a href="display.jsp"><button>Back to mainpage</button> </a>


        <br><br><br>
  <%    if(resultset.previous()==false)
            {   
               
                out.println("no books to return");
            }
       else {

       %>
        <h2> Which book do you want to return? </h2>

        <form action='return' method="POST">
            Book ID &nbsp<input type="text" name="bookid" required> <br><br>
            Quantity &nbsp<input type="number" name="quant" required> <br><br>

            <input type="submit" value="Submit">

         </form>   

         <%
         if(session.getAttribute("returnerror")!=null)
           {out.println(session.getAttribute("returnerror"));
           session.removeAttribute("returnerror");
           }
     }

    }

        catch(Exception e)
        {
            out.println(e);
        }


     %>