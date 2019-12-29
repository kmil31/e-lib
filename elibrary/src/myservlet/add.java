package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Calendar;
import javax.servlet.annotation.WebServlet;
import java.sql.*;
 @WebServlet("/add")                                    // OBJECT CLASS DECLARATIONS
public class add extends HttpServlet {
 public void doPost(HttpServletRequest request,HttpServletResponse response)

    throws IOException,ServletException {

    response.setContentType("text/html");

    PrintWriter out= response.getWriter();
    HttpSession session = request.getSession();

    String bookname="";
    String author="";
    String genre="";
    String quantity;
    String bookid;

    bookname=request.getParameter("bookname");   //IDK WHATS THE NAME OF THE VARIABLEEEE
    author=request.getParameter("author");   //IDK WHATS THE NAME OF THE VARIABLEEEE
    genre=request.getParameter("genre");  //IDK WHATS THE NAME OF THE VARIABLEEEE
    quantity=request.getParameter("quant");  //IDK WHATS THE NAME OF THE VARIABLEEEE
    bookid=request.getParameter("bookid"); //IDK WHATS THE NAME OF THE VARIABLEEEE

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
       ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
           Statement stmt=con.createStatement();
           //stmt.executeUpdate("INSERT INTO books( VALUES '("+bookid+",'"+bookname+"','"+author+"','"+genre+"',"+quantity+") ");
           stmt.executeUpdate("Insert INTO books values ('"+bookid+"','"+bookname+"','"+author+"','"+genre+"','"+quantity+"'); ");
           con.close();
           response.sendRedirect("display.jsp");

         }
           catch(Exception e)
           {
            out.println(e);
            out.println("<a href='add.jsp'>Go back </a>");
           }


        }
}
