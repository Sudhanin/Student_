<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.*,java.util.Date,java.util.Enumeration,student.Student,java.sql.*" %>
 <%@ page import="student.DB_Connection" %>
 <% String name=request.getParameter("subject_name");
 	String code=request.getParameter("subject_code");
 	String credits=request.getParameter("subject_credits");
 	String Theory=request.getParameter("Theory");
 	int tp=1;
 	if(Theory.contentEquals("0")){
 		tp=0;
 	}
 	try{
 		Connection con =DB_Connection.getCon();
 		Statement st = con.createStatement();
 		st.executeUpdate("insert into subject values('"+code+"','"+name+"','"+credits+"','"+tp+"');");
 		response.sendRedirect("Student.html");
 	}
 	catch (SQLIntegrityConstraintViolationException e) {
 	    out.println("The details of the subject is already added");
 	}
 	catch(Exception e){
 		out.println(e);
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>added successfully</title>
</head>
<body>

</body>
</html>