<%@ page import="java.sql.*" %>
<%@ page session="true"%>

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

 <%         String user=(String)session.getAttribute("user");
            try{
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
            statement.executeQuery("select * from books");
        %>
<div class="box">
    <br>
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

            
          </div>
        </TABLE>
        <br>
          <a href="display.jsp"><button>Back to mainpage</button> </a>


        <br><br><br>
 <%
    }
        catch(Exception e)
        {
            out.println(e);
        }


     %>

            
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


</div>
         </body>



</html>