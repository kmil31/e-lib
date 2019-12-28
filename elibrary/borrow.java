package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Calendar;

                                     // OBJECT CLASS DECLARATIONS
public class borrow extends HttpServlet {
 public void doPost(HttpServletRequest request,HttpServletResponse response)

    throws IOException,ServletException {

    response.setContentType("text/html");

    PrintWriter out= response.getWriter();
    HttpSession session = request.getSession();

    String title="";
    String user="";
    int quantity, bookid;
    Date borrowd = new Date();

    Calendar c= Calender.getInstance();
    c.setTime(borrowsd);
    c.add(Calander.Date, 7);
    Date retd = c.getTime();


    title=request.getParameter("title");   //IDK WHATS THE NAME OF THE VARIABLEEEE
    quantity=(INTEGER)request.getParameter("quantity");  //IDK WHATS THE NAME OF THE VARIABLEEEE
    user =session.getAttribute("user");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
       ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("SELECT bookid FROM books WHERE title='"+title+"'");
           bookid = rs.getString(1)

           stmt.executeUpdate("INSERT INTO borrowed VALUES ('"+bookid+"', '"+title+"', '"+user+"', '"+borrowd+"', '"+retd+"')")


           con.close();
         }
           catch(Exception e)
           {
            out.println(e);
           }


        }
}
