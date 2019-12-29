package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.sql.*;
import javax.servlet.annotation.WebServlet;

@WebServlet ("/return")

public class return2 extends HttpServlet
{	
	public void doPost(HttpServletRequest request,HttpServletResponse response)  throws IOException,ServletException 
	 {
	 	response.setContentType("text/html");

    	PrintWriter out= response.getWriter();
    	HttpSession session = request.getSession();
    	

   	 	String bookid;
   	 	String quantity;
    	int sum;
    	int remainder;

    	bookid=request.getParameter("bookid"); 
    	quantity=request.getParameter("quant");

    	 try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection
       ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");
           Statement stmt=con.createStatement();
           Statement stmt2=con.createStatement();
          ResultSet rs=stmt.executeQuery("SELECT bookid,quantity FROM borrowed WHERE bookid='"+bookid+"'");
          ResultSet rs2=stmt2.executeQuery("SELECT bookid,quantity FROM books WHERE bookid='"+bookid+"'");
          rs.next();
          rs2.next();
          
          if(Integer.parseInt(quantity)>Integer.parseInt(rs.getString(2)))
          {
          	session.setAttribute("returnerror","U cant return more than what you have dude");
          	response.sendRedirect("return.jsp");
          }
          else if(Integer.parseInt(quantity)<Integer.parseInt(rs.getString(2)))
          {	
          	sum=Integer.parseInt(rs2.getString(2))+Integer.parseInt(quantity);
          	remainder=Integer.parseInt(rs.getString(2))-Integer.parseInt(quantity);
          	stmt.executeUpdate("Update borrowed set quantity="+remainder+" where bookid='"+bookid+"'");
          	stmt.executeUpdate("Update books set quantity ="+sum+" where bookid="+bookid);  
          }
          
          else{
           sum=Integer.parseInt(rs2.getString(2))+Integer.parseInt(quantity);
           stmt.executeUpdate("DELETE FROM borrowed WHERE bookid="+bookid+"");
           stmt.executeUpdate("Update books set quantity ="+sum+" where bookid="+bookid);      
       		}
          

           con.close();
           response.sendRedirect("return.jsp");
         }
           catch(Exception e)
           {
            out.println(e);
            
           }





	 }
   

}	