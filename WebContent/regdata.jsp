<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ include file="register.jsp" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" >
<title>REG DATA</title>
</head>
<body>
<% 
try 
{
  ResultSet rs=null;
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
  String teamname = request.getParameter("teamname");
  String email = request.getParameter("email");
  String phone = request.getParameter("contact");
  String mem1 = request.getParameter("member1name");
  String mem2 = request.getParameter("member2name");
  String cllg = request.getParameter("college");
  String pass = request.getParameter("password");
  String passc = request.getParameter("password_confirmation");
  Statement stat = con.createStatement();
  stat.executeUpdate("insert into REGISTER(TEAM_NAME,EMAIL_ID,CONTACT_NO,MEM1_FIRSTNAME,MEM2_FIRSTNAME,COLLEGE,PASSWORD,PASSWORD_CON) values('"+teamname+"','"+email+"','"+phone+"','"+mem1+"','"+mem2+"','"+cllg+"','"+pass+"','"+passc+"')");
  rs=stat.executeQuery("select * from REGISTER");
  stat.executeUpdate("insert into ANSWERS(TEAM_NAME) values('"+teamname+"')");
  rs=stat.executeQuery("select * from ANSWERS");
 %><iframe src="login.jsp" scrolling="auto"></iframe>

<% }catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}
%>
<jsp:forward page="login.jsp"></jsp:forward>

</body>

</html>