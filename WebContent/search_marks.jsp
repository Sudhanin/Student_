<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.util.Date,java.util.Enumeration,java.sql.*" %>
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

 <%
 	String roll_number = request.getParameter("roll_number");
 	try{
		Connection con =DB_Connection.getCon();
		Statement st = con.createStatement();
		//ResultSet stud= st.executeQuery("select * from  student where roll_number='"+roll_number+"';");
		//out.println("Roll Number:"+stud.getString(1)+"\tName:"+stud.getString(2)+"\n"+"Degree & Department:"+stud.getString(6)+stud.getString(3));
		//stud.close();
		ResultSet rs= st.executeQuery("select * from  marks where roll_number='"+roll_number+"';");
		if (!rs.next()){
			out.println("No results found");
		}
		else{


			%>
			<TABLE BORDER="1">
 	<TR>
  	<TH>Roll_number</TH>
  	    <TH>Subject Code</TH>
    	  <TH>Marks</TH>
  	</TR>
			<%
		do{
			%><TR>
				<TD><%=rs.getString(1)%></TD>
				<TD><%=rs.getString(2)%></TD>
				<TD><%=rs.getString(3)%></TD>
			</TR>
			<%}	
		while(rs.next());
	}
		}
	catch(Exception e){
		out.println(e);
	}
 %>
 </TABLE>
</body>
</html>