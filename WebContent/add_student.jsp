<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.*,java.util.Date,java.util.Enumeration,student.Student,java.sql.*" %>
 <%	Student student=new Student();
 	student.Name=request.getParameter("student_name");
 	student.roll_number=request.getParameter("roll_number");
 	student.year=request.getParameter("year");
 	student.gender=request.getParameter("gender");
 	student.Department=request.getParameter("department");
 	student.Program = request.getParameter("program");
 	out.println(student.add());
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Students</title>
</head>
<body>
<form method="post" action="add_student.jsp">
	<p >Name</p>
	<input type="text" name="student_name" placeholder="Enter username" required="required">
	<p>Roll Number</p>
	<input type="text" name="roll_number" placeholder="Enter roll number" required="required">
	<p>Year</p>
	<input type="text" name="year"  required="required">
	<p>Gender </p>
	<input type="radio" id="Male" name="gender" value="male">
    <label >Male</label><br>
	<input type="radio" id="Female" name="gender" value="female">
    <label >Female</label><br>
    <input type="radio" id="Others" name="gender" value="others">
    <label >Others</label><br>
	<p>Department</p>
	<input type="radio" id="Civil" name="department" value="Civil">
    <label >Civil</label>
    <input type="radio" id="CSE" name="department" value="CSE">
    <label >CSE</label>
    <input type="radio" id="ECE" name="department" value="ECE">
    <label >ECE</label>
    <input type="radio" id="EEE" name="department" value="EEE">
    <label >EEE</label>
    <input type="radio" id="EIE" name="department" value="EIE">
    <label >EIE</label>
    <input type="radio" id="IT" name="department" value="IT">
    <label >IT</label>
    <input type="radio" id="Mech" name="department" value="Mech">
    <label>Mech</label><br>
    <label>Program</label><br>
    <input type="radio" id="program" name="program" value="UG">
    <label>UG (BE/B.Tech)</label><br>
    <input type="radio" id="program" name="program" value="PG">
    <label>PG (ME/M.Tech)</label><br><br>
    <input type="submit" value="Submit" style="width:100px; height:30px;">
</form>
</body>
</html>