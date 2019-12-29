<%@ page import="java.sql.*" %>
<%@ page session="true"%>


<HTML>
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
        <H1>Books that are provided </H1>

        <% 
            out.println(session.getAttribute("user"));
            out.println(session.getAttribute("role"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");

            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from books") ; 
        %>

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

            
          
        </TABLE>
          <a href="login.jsp">Back to login </a>

          <% if(session.getAttribute("role").equals("admin"))
          {
            out.println("<a href='add.jsp'>Add a book</a>");
             out.println("<a href='remove.jsp'>Delete a book</a>");
          }
              else
              {
              out.println("<a href='return.jsp'></br>Return your book</a>");
              out.println("</br></br></br></br>");


          /*    out.print("<h1>Which book do you wanna borrow?</h1>");
              out.print(
              "<form action='add' method='POST'>");
                out.print( "<h3>Book name</h3><input type='text' value='Book Name' name='bookname'>");
                  out.print("<h3>Amount to borrow?</h3><input type='number' min=0 name='quant'>  </form>");
                out.println("<input type='submit' value='Submit'>");  
              
             */ %>

             <h2> What do you want to borrow? </h2>
             <form action='borrow' method='POST'>
              <h3>Book name</h3>
                <input type="text" name='bookname' required >
              <h3>Quantity to borrow?</h3>
                <input type="number" min=0; name='quant' required>
                <input type="submit" value='Submit' style="margin-left:100px;font-size:60px;">
                <%

              }

          /*   if(session.getAttribute("badmessage")!=null) 
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