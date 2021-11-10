form.jsp

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h3>Login Form</h3>  

<form action="login.jsp">  
Email:<input type="text" name="email"/><br/><br/>  
Password:<input type="password" name="password"/><br/><br/>  
<input type="submit" value="login"/> 

</form>

</body>
</html>

___________________________________________________________

LOGIN.JSP

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h2> DETAILS  </h2> 
<% String email = request.getParameter("email"); %>

<% if(email.equalsIgnoreCase("taru"))
		{  
        RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
        rd.forward(request, response);  
    }  
    else
    {  
       response.sendRedirect("error.jsp");
    }
%>

</body>
</html>


___________________________________________________________________

WELCOME.JSP

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String email = request.getParameter("email"); %>

<%= email %>  

</body>
</html>
______________________________________________________________

ERROR.JSP

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>you have enter wrong credentail</h1>
</body>
</html>
