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

    int bookid;

    bookid=(INTEGER)request.getParameter("bookid"); //IDK WHATS THE NAME OF THE VARIABLEEEE

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
       ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
           Statement stmt=con.createStatement();
           stmt.executeUpdate("DELETE FROM books WHERE bookid="+bookid+"");
           con.close();

         }
           catch(Exception e)
           {
            out.println(e);
           }


        }
}
