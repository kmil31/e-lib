<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>E Library</TITLE>
    </HEAD>

    <BODY>
        <H1>Books that are provided </H1>

        <% 
        try{
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
          }
          catch(Exception e)
          {
            out.println(e);
          }

            %>
        </TABLE>
    </BODY>
</HTML>