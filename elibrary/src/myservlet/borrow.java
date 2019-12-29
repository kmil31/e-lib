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

@WebServlet("/borrow")                                   // OBJECT CLASS DECLARATIONS
public class borrow extends HttpServlet {


 public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException {

    response.setContentType("text/html");

    PrintWriter out= response.getWriter();
    HttpSession session = request.getSession();

    String bookname="";
    String user="";
    String quantity, bookid;
    int remainder;
    Date borrowed = new Date();

    Calendar c= Calendar.getInstance();
    c.setTime(borrowed);
    c.add(Calendar.DATE, 7);
    Date retd = c.getTime();


    bookname=request.getParameter("bookname");   //IDK WHATS THE NAME OF THE VARIABLEEEE
    quantity=request.getParameter("quant");  //IDK WHATS THE NAME OF THE VARIABLEEEE
    user =(String)session.getAttribute("user");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
       ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("SELECT bookid,quantity FROM books WHERE bookname='"+bookname+"'");
          
           rs.next();
           bookid = rs.getString(1);

           remainder=Integer.parseInt(rs.getString(2))-Integer.parseInt(quantity);
           if(remainder<0)
           {
            response.sendRedirect("display.jsp");
            session.setAttribute("badmessage","Amount borrowed exceeds quantity");
           }
           else
           {
           stmt.executeUpdate("INSERT INTO borrowed VALUES ('"+bookid+"', '"+bookname+"', '"+user+"', '"+borrowed+"', '"+retd+"','"+quantity+"')");
           stmt.executeUpdate("Update books set quantity ="+remainder+" where bookid="+bookid);      
         }


         
           con.close();
           session.setAttribute("goodmessage","Book successfully borrowed");
           response.sendRedirect("display.jsp");

         }
           catch(Exception e)
           {
            out.println(e);
            session.setAttribute("badmessage","Invalid Operation: You have already borrowed this book or have inputted invalid name");
            out.println("<a href='display.jsp'>Go back </a>");
           
           }


        }
}