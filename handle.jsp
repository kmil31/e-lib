<%@ page session = "true" %>
<html>
  <head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  </head>

<body>

    <%! String name,price, published;
         
       %>

<% 

       name=request.getParameter("HP");   //NOVEL

       if(name!=null)
       	{
        name="Harry Potter and the Goblet of Fire";
       	out.println(name);

       }
%>
<br>
<%
        name=request.getParameter("Khaldun");

       if(name!=null)
       	{
        name="Autobiography of Ibn Khaldun";
       	out.println(name);
         }
         %>
         
  <br>
<%
        name=request.getParameter("Umar");

       if(name!=null)
       	{
        name="Umar Al-Khattab";
       	out.println(name);
         }
         %>
  <br>
<%
        name=request.getParameter("Muhammad");

       if(name!=null)
       	{
        name="Muhammad the Messenger";
       	out.println(name);
         }
         %>
  <br>
<%
        name=request.getParameter("Art");   //CAREER

       if(name!=null)
       	{
        name="The Ultimate Concept Art Career Guide";
       	out.println(name);
        }
         %>
  <br>
  <%
        name=request.getParameter("Attorney");

       if(name!=null)
       	{
        name="The Early Career Guide for Attorneys";
       	out.println(name);
         }
         %>
  <br>
  <%
        name=request.getParameter("CareerCode");

       if(name!=null)
       	{
        name="The Career Code";
       	out.println(name);
         }
         %>
  <br>
  <%
        name=request.getParameter("Architecture");

       if(name!=null)
       	{
        name="Career in Architecture";
       	out.println(name);
         }
         %>
  <br>
  <%
        name=request.getParameter("Javascript");   //ACADEMIC

       if(name!=null)
       	{
        name="Javascript for Beginners";
       	out.println(name);
        }
         %>
  <br>
  <%
        name=request.getParameter("Tourism");

       if(name!=null)
       	{
        name="The Tourism Coach";
       	out.println(name);
         }
         %>
  <br>
  <%
        name=request.getParameter("OS");

       if(name!=null)
       	{
        name="Operating System Concept";
       	out.println(name);
         }
         %>
  <br>
  <%
        name=request.getParameter("Psychology");

       if(name!=null)
       	{
        name="Dark Psychology";
       	out.println(name);
         }
         %>
  <br>
<form action="validate">  <%--direct to database --%>
  NRIC/Matric No. <input type="text" name="Matric"><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>