<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*"%>
<%@ include file="leader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Leaderboard</title>
  <meta name="viewport" content="width=device-width, user-scalable=no">
  <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600' rel='stylesheet' type='text/css'>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="css/leader.css" rel="stylesheet">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


</head>
<body>

<span class="text1">

<%
 try 
{
  ResultSet rs=null;
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
 Statement stat = con.createStatement();
 rs=stat.executeQuery("select TEAM_NAME,SCORE from REGISTER order by SCORE desc");
 	if( rs.next() )
 	{
    int i;
    ResultSetMetaData rsmd=rs.getMetaData();
    int columnCount=rsmd.getColumnCount(); 
    for(i=1;i<=columnCount;i++)
       { System.out.print(rsmd.getColumnName(i) + "\t");}
    System.out.println();
    
    do
    {
        for( int j=1; j<=columnCount; j++)
        	
            out.print( rs.getString(j) + "\t");
        out.println();
       
    } while(rs.next());
    
	}
}catch(ClassNotFoundException e)
{
    out.println(e.getLocalizedMessage());
}
 %> 

  </span>  
          

</body>
<style>
.text1{
	color:white;
	font-weight:bold;
	position: fixed;
	font-size:20px;
	margin-left:45%;
	margin-top:0%;
}
</style>
</html>