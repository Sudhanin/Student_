<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.util.Date,java.util.Enumeration,java.sql.*,student.Mark" %>
 <%@ page import="student.DB_Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<form method="get" action="search_marks.jsp">
		<p>Roll Number</p>
		<input type="text" name="roll_number" required="required"><br><br>
		<input type="submit" placeholder="Search" style="width:100px; height:30px;">
	</form>

 <%  Mark m= new Mark();
 	m.roll_number = request.getParameter("roll_number");
 	String [] result=m.fetch();
 	if(result==null){
 		out.println("No results found");
 	}
		else{

			%>
			<TABLE BORDER="1">
 	<TR>
  	    <TH>Subject Code</TH>
    	  <TH>Marks</TH>
  	</TR>
			<%
			
		for(String s: result)	{
			if(s!=null){
			String rs[] = s.split(",");
			%><TR><TD><%out.println(rs[1]);%></TD>
			<TD><%out.println(rs[2]);%></TD></TR><%
			}}
 	%></TABLE><%
 	}
 %>
 
</body>
</html>