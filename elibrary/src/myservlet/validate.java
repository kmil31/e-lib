package myservlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import java.sql.*;
import javax.servlet.http.*;
import java.text.ParseException;
@WebServlet("/validate")
public class validate extends HttpServlet {


	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws IOException,ServletException
		{
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			HttpSession session=request.getSession();

			String formname="";
			String formpw="";
			String error;

			formname=request.getParameter("username");
       formpw=request.getParameter("password");
       out.println(formname);
       out.println(formpw);
       
       try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection
           ("jdbc:mysql://localhost:3306/sonoo?characterEncoding=latin1&useConfigs=maxPerformance","root","password");

           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from login");

           while(rs.next())
           {
            if(formname.equals(rs.getString(1)) && formpw.equals(rs.getString(2)))
              {
                out.println("TRUE");
                session.setAttribute("user",formname);
                session.setAttribute("password",formpw);
                session.setAttribute("role",rs.getString(3));
                response.sendRedirect("display.jsp");
              }//iterates through every single row to find a match
             else
             {
              out.println("next iteration");
              } 
            
           
           }
             //if cannot find will redirect back to form.jsp
             out.println("FALSE");
              error="invalid login";
              session.setAttribute("error","Invalid login");
               response.sendRedirect("login.jsp");


            con.close();
         }
           catch(Exception e)
           {
            out.println(e);
           }

		}
}

