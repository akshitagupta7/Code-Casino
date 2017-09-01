<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="spin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answer</title>
</head>
<body>
<%
try
{
	String ans=(String)request.getParameter("ans1");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st= con.createStatement();
	if(ans.equals("ii"))
	{
		int ss=(Integer)session.getAttribute("SCORE");
	PreparedStatement ps=con.prepareStatement("update REGISTER set SCORE=? where TEAM_NAME=?" );
	ss+=10;
 	session.setAttribute("SCORE",ss);
	ps.setInt(1,ss);
	int i=ps.executeUpdate();
	}
else
	out.print(ans);
}
catch(Exception e)
{
	out.print(e);
}

%>
</body>
</html>