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
	String answer=(String)request.getParameter("pick");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	Statement st= conn.createStatement();
	int ss=(Integer)session.getAttribute("SCORE");
	String name=(String)session.getAttribute("TEAM_NAME");
	if(answer.equals("1"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A1=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A1",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("2"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A2=? where TEAM_NAME=?");
	ss+=20;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A2",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("3"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A3=? where TEAM_NAME=?");
	ss+=20;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A3",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("4"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A4=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A4",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("5"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A5=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A5",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("6"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A6=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A6",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("7"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A7=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A7",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("8"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A8=? where TEAM_NAME=?");
	ss+=20;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A8",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("9"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A9=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A9",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("10"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A10=? where TEAM_NAME=?");
	ss+=30;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A10",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("11"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A11=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A11",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("12"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A12=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A12",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("13"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A13=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A13",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("14"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A14=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A14",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("15"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A15=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A15",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("16"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A16=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A16",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("17"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A1=? where TEAM_NAME=?");
	ss+=20;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A1",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("18"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A18=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A18",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("19"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A19=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A19",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("20"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A20=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A20",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("21"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A21=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A21",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("22"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A22=? where TEAM_NAME=?");
	ss+=20;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A22",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("23"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A23=? where TEAM_NAME=?");
	ss+=25;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A23",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("24"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A24=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A24",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("25"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A25=? where TEAM_NAME=?");
	ss+=30;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A25",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("26"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A26=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A26",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("27"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A27=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A27",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("28"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A28=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A28",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("29"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A29=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A29",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("30"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A30=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A30",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("31"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A31=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A31",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("32"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A32=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A32",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("33"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A33=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A33",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("34"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A34=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A34",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("35"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A35=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A35",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("36"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A36=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A36",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("37"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A37=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A37",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("38"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A38=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A38",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("39"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A39=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A39",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("40"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A40=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A40",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("41"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A41=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A41",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("42"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A42=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A42",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("43"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A43=? where TEAM_NAME=?");
	ss+=15;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A43",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("44"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A44=? where TEAM_NAME=?");
	ss+=10;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A44",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("45"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A45=? where TEAM_NAME=?");
	ss+=5;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A45",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
	}
	else if(answer.equals("46"))
	{
		if(ans.equals("try"))
		{
	PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A46=? where TEAM_NAME=?");
	ss+=20;
 	session.setAttribute("SCORE",ss);
 	session.setAttribute("A46",ans);
	ps.setInt(1,ss);
	ps.setString(2,ans);
	ps.setString(3,name);
	int i=ps.executeUpdate();
		}
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