
index.jsp

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2> This is my first JSP page </h2>
<%! String name = "KIET"; %>

<H3> College Name : </H3>
<%= name %>

 <form action="submit.jsp">
name:<input type ="text" name ="name"><br/><br/> 
<input type="submit">


</form>
</body>
</html>



---------------------------------------------
submit.jsp


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2> YOUR DATA </h2>
<% String name = request.getParameter("name"); %>

<%=name %>  


</body>
</html>
