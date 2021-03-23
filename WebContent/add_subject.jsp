<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.*,java.util.Date,java.util.Enumeration,student.Student,java.sql.*,student.Subject" %>
 <%@ page import="student.DB_Connection" %>
 <% Subject sub = new Subject();
    sub.name=request.getParameter("subject_name");
    sub.code=request.getParameter("subject_code");
    sub.credits=request.getParameter("subject_credits");
    sub.theory=request.getParameter("Theory");
 	out.println(sub.add());
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<form method="post" action="add_subject.jsp">
	<p>Enter Subject Details</p>
	<input type="text" placeholder="Enter the subject code" name="subject_code" required="required">
	<p>Subject Name</p>
	<input type="text" placeholder="Enter the subject name" name="subject_name" required="required">
	<p>Credits</p>
	<input type="number" placeholder="Enter the subject credits" name="subject_credits" required="required"><br><br>
	<input type="radio" placeholder="" name="Theory" value="1">
	<label>Theory Subject</label>
	<input type="radio" placeholder="" name="Theory" value="0">
	<label>PracticalSubject</label><br><br>
	 <input type="submit" value="Submit" style="width:100px; height:30px;">
</form>

</body>
</html>