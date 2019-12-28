package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Calendar;

                                     // OBJECT CLASS DECLARATIONS
public class add extends HttpServlet {
 public void doPost(HttpServletRequest request,HttpServletResponse response)

    throws IOException,ServletException {

    response.setContentType("text/html");

    PrintWriter out= response.getWriter();
    HttpSession session = request.getSession();

    String bookname="";
    String author="";
    String genre="";
    int quantity;
    int bookid;

    bookname=request.getParameter("bookname");   //IDK WHATS THE NAME OF THE VARIABLEEEE
    author=request.getParameter("author");   //IDK WHATS THE NAME OF THE VARIABLEEEE
    genre=request.getParameter("genre");  //IDK WHATS THE NAME OF THE VARIABLEEEE
    quantity=(INTEGER)request.getParameter("quantity");  //IDK WHATS THE NAME OF THE VARIABLEEEE
    bookid=(INTEGER)request.getParameter("bookid"); //IDK WHATS THE NAME OF THE VARIABLEEEE

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
       ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("INSERT INTO books( VALUES ("+bookid+",'"+bookname+"','"+author+"','"+genre+"',"+quantity+") ");
           con.close();

         }
           catch(Exception e)
           {
            out.println(e);
           }


        }
}
