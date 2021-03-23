<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*,java.util.Date,java.util.Enumeration,student.Student,java.sql.*,student.Mark" %>
 <%@ page import="student.DB_Connection" %>
<%  Mark m = new Mark();
 	m.roll_number = request.getParameter("roll_number");
 	m.code = request.getParameter("subject_code");
 	m.mark = request.getParameter("marks");
 	out.println(m.add());
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<form method="post" action="add_mark.jsp">
	<p>Roll Number</p>
	<input type="text" name="roll_number" required="required">
	<p>Subject Code</p>
	<input type="text" name="subject_code" required="required">
	<p>Mark</p>
	<input type="number" name="marks" required="required"><br><br>
	<input type="submit" value="Submit" style="width:100px; height:30px;">
</form>
</body>
</html>
 