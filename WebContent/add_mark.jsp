<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*,java.util.Date,java.util.Enumeration,student.Student,java.sql.*" %>
 <%@ page import="student.DB_Connection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
form method="post" action="add_mark.jsp">
	<p>Roll Number</p>
	<input type="text" name="roll_number" required="required">
	<p>Subject Code</p>
	<input type="text" name="subject_code" required="required">
	<p>Mark</p>
	<input type="number" name="marks" required="required"><br><br>
	<input type="submit" value="Submit" style="width:100px; height:30px;">
</body>
</html>
 <%
 	String roll_number = request.getParameter("roll_number");
 	String subject_code = request.getParameter("subject_code");
 	String marks = request.getParameter("marks");
 	try{
 		Connection con =DB_Connection.getCon();
 		Statement st = con.createStatement();
 		st.executeUpdate("insert into marks values('"+roll_number+"','"+subject_code+"','"+marks+"');");
 		response.sendRedirect("Mark.html");
 	}
 	 catch (SQLIntegrityConstraintViolationException e) {
 	    out.println("The marks of the student for the subject is already added");
 	}
 	catch(Exception e){
 		out.println(e);
 	}
 %>
 