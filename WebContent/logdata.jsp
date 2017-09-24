<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="login.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log Data</title>
</head>
<body>
<%
	String n=(String)request.getParameter("teamname");
	String p=(String)request.getParameter("password");
	Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
Statement s= con.createStatement();
int f=0;
ResultSet rs=s.executeQuery("select * from REGISTER");
while(rs.next())
{
	if(rs.getString("TEAM_NAME").equals(n) && rs.getString("PASSWORD").equals(p))
	 {f=1;break;}
}

if(f==1)
{
	String str="select SCORE from ANSWERS where TEAM_NAME=?";
	PreparedStatement ste=con.prepareStatement(str);
	ste.setString(1,n);
	ResultSet sett=ste.executeQuery();
	while(sett.next()){
	int sc=sett.getInt("SCORE");
	session.setAttribute("SCORE",sc);}
	session.setAttribute("TEAM_NAME",n);
	out.print("<span class=\"text\">WELCOME "+n+"</span>");
	RequestDispatcher rd=request.getRequestDispatcher("spin.jsp");
	rd.include(request,response);
	
}
else
{
	out.print("<span class=\"text1\">Not registered!</span>");
}
%>
</body>
<style>
.text{
	color:white;
	font-weight:bold;
	position: fixed;
	font-size:20px;
	left:45%;
	top:5%
	}
.text1{
	color:red;
	font-weight:bold;
	position: relative;
	font-size:20px;
	margin-left:45%;
}
</style>
</html>