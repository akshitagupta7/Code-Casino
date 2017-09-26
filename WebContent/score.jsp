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
	
	Connection conne = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	String str="select * from QUESTIONS where TEAM_NAME=?";
	PreparedStatement sta=conne.prepareStatement(str);
	sta.setString(1,name);
	ResultSet rset=sta.executeQuery();
	String s1="0";String s2="0";
	String s3="0";String s4="0";
	String s5="0";String s6="0";
	String s7="0";String s8="0";
	String s9="0";String s10="0";
	String s11="0";String s12="0";
	String s13="0";String s14="0";
	String s15="0";String s16="0";
	String s17="0";String s18="0";
	String s19="0";String s20="0";
	String s21="0";String s22="0";
	String s23="0";String s24="0";
	String s25="0";String s26="0";
	String s27="0";String s28="0";
	String s29="0";String s30="0";
	String s31="0";String s32="0";
	String s33="0";String s34="0";
	String s35="0";String s36="0";
	String s37="0";String s38="0";
	String s39="0";String s40="0";
	String s41="0";String s42="0";
	String s43="0";String s44="0";
	String s45="0";String s46="0";
	while(rset.next()){
	     s1=(String)rset.getString("Q1");s2=(String)rset.getString("Q2");
	     s3=(String)rset.getString("Q3");s4=(String)rset.getString("Q4");
	     s5=(String)rset.getString("Q5");s6=(String)rset.getString("Q6");
	     s7=(String)rset.getString("Q7");s8=(String)rset.getString("Q8");
	     s9=(String)rset.getString("Q9");s10=(String)rset.getString("Q10");
	     s11=(String)rset.getString("Q11");s12=(String)rset.getString("Q12");
	     s13=(String)rset.getString("Q13");s14=(String)rset.getString("Q14");
	     s15=(String)rset.getString("Q15");s16=(String)rset.getString("Q16");
	     s17=(String)rset.getString("Q17");s18=(String)rset.getString("Q18");
	     s19=(String)rset.getString("Q19");s20=(String)rset.getString("Q20");
	     s21=(String)rset.getString("Q21");s22=(String)rset.getString("Q22");
	     s23=(String)rset.getString("Q23");s24=(String)rset.getString("Q24");
	     s25=(String)rset.getString("Q25");s26=(String)rset.getString("Q26");
	     s27=(String)rset.getString("Q27");s28=(String)rset.getString("Q28");
	     s29=(String)rset.getString("Q29");s30=(String)rset.getString("Q30");
	     s31=(String)rset.getString("Q31");s32=(String)rset.getString("Q32");
	     s33=(String)rset.getString("Q33");s34=(String)rset.getString("Q34");
	     s35=(String)rset.getString("Q35");s36=(String)rset.getString("Q36");
	     s37=(String)rset.getString("Q37");s38=(String)rset.getString("Q38");
	     s39=(String)rset.getString("Q39");s40=(String)rset.getString("Q40");
	     s41=(String)rset.getString("Q41");s42=(String)rset.getString("Q42");
	     s43=(String)rset.getString("Q43");s44=(String)rset.getString("Q44");
	     s45=(String)rset.getString("Q45");s46=(String)rset.getString("Q46");
	}
	String dem=(String)request.getParameter("demo");
	if (dem != null && dem.compareTo("No hint") != 0 && dem.compareTo("before") != 0)
	{
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=? where TEAM_NAME=?");
		ss-=5;
	 	session.setAttribute("SCORE",ss);
	 	ps.setInt(1,ss);
	 	ps.setString(2,name);
	 	
	 	int i=ps.executeUpdate();
	 	
	}
	
	
	
	if(answer.equals("1"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A1=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A1").equals(ans))
			if(s1.equals("0"))
				ss+=10;}
 		session.setAttribute("SCORE",ss);
 		session.setAttribute("A1",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q1=? where TEAM_NAME=?");
    	 	session.setAttribute("Q1",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}

	else if(answer.equals("2"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A2=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A2").equals(ans))
			if(s2.equals("0"))
				ss+=10;}
 		session.setAttribute("SCORE",ss);
 		session.setAttribute("A2",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q2=? where TEAM_NAME=?");
    	 	session.setAttribute("Q2",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("3"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A3=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A3").equals(ans))
			if(s3.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A3",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q3=? where TEAM_NAME=?");
    	 	session.setAttribute("Q3",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("4"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A4=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A4").equals(ans))
			if(s4.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A4",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q4=? where TEAM_NAME=?");
    	 	session.setAttribute("Q4",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("5"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A5=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A5").equals(ans))
			if(s5.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A5",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q5=? where TEAM_NAME=?");
    	 	session.setAttribute("Q5",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }

	}
	else if(answer.equals("6"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A6=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A6").equals(ans))
			if(s6.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A6",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q6=? where TEAM_NAME=?");
    	 	session.setAttribute("Q6",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	
	else if(answer.equals("7"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A7=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A7").equals(ans))
			if(s7.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A7",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q7=? where TEAM_NAME=?");
    	 	session.setAttribute("Q7",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("8"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A8=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A8").equals(ans))
			if(s8.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A8",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q8=? where TEAM_NAME=?");
    	 	session.setAttribute("Q8",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("9"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A9=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A9").equals(ans))
			if(s9.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A9",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q9=? where TEAM_NAME=?");
    	 	session.setAttribute("Q9",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("10"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A10=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A10").equals(ans))
			if(s10.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A10",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q10=? where TEAM_NAME=?");
    	 	session.setAttribute("Q10",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("11"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A11=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A11").equals(ans))
			if(s11.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A11",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q11=? where TEAM_NAME=?");
    	 	session.setAttribute("Q11",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("12"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A12=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A12").equals(ans))
			if(s12.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A12",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q12=? where TEAM_NAME=?");
    	 	session.setAttribute("Q12",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("13"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A13=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A13").equals(ans))
			if(s13.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A13",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q13=? where TEAM_NAME=?");
    	 	session.setAttribute("Q13",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("14"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A14=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A14").equals(ans))
			if(s14.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A14",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q14=? where TEAM_NAME=?");
    	 	session.setAttribute("Q14",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("15"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A15=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A15").equals(ans))
			if(s15.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A15",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q15=? where TEAM_NAME=?");
    	 	session.setAttribute("Q15",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("16"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A16=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A16").equals(ans))
			if(s16.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A16",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q16=? where TEAM_NAME=?");
    	 	session.setAttribute("Q16",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("17"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A17=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A17").equals(ans))
			if(s17.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A1",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q17=? where TEAM_NAME=?");
    	 	session.setAttribute("Q17",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("18"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A18=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A18").equals(ans))
			if(s18.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A18",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q18=? where TEAM_NAME=?");
    	 	session.setAttribute("Q18",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("19"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A19=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A19").equals(ans))
			if(s19.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A19",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q19=? where TEAM_NAME=?");
    	 	session.setAttribute("Q19",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("20"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A20=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A20").equals(ans))
			if(s20.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A20",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q20=? where TEAM_NAME=?");
    	 	session.setAttribute("Q20",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("21"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A21=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A21").equals(ans))
			if(s21.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A21",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q21=? where TEAM_NAME=?");
    	 	session.setAttribute("Q21",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     
		}
	}
	else if(answer.equals("22"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A22=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A22").equals(ans))
			if(s22.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A22",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q22=? where TEAM_NAME=?");
    	 	session.setAttribute("Q22",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("23"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A23=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A23").equals(ans))
			if(s23.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A23",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q23=? where TEAM_NAME=?");
    	 	session.setAttribute("Q23",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("24"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A24=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A24").equals(ans))
			if(s24.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A24",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q24=? where TEAM_NAME=?");
    	 	session.setAttribute("Q24",answer);
    		p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("25"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A25=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A25").equals(ans))
			if(s25.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A25",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q25=? where TEAM_NAME=?");
    	 	session.setAttribute("Q25",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("26"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A26=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A26").equals(ans))
			if(s26.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A26",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q26=? where TEAM_NAME=?");
    	 	session.setAttribute("Q26",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("27"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A27=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A27").equals(ans))
			if(s27.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A27",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
			if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q27=? where TEAM_NAME=?");
    	 	session.setAttribute("Q27",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("28"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A28=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A28").equals(ans))
			if(s28.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A28",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q28=? where TEAM_NAME=?");
    	 	session.setAttribute("Q28",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("29"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A29=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A29").equals(ans))
			if(s29.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A29",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q29=? where TEAM_NAME=?");
    	 	session.setAttribute("Q29",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("30"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A30=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A30").equals(ans))
			if(s30.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A30",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q30=? where TEAM_NAME=?");
    	 	session.setAttribute("Q30",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("31"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A31=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A31").equals(ans))
			if(s31.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A31",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q31=? where TEAM_NAME=?");
    	 	session.setAttribute("Q31",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("32"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A32=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A32").equals(ans))
			if(s32.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A32",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q32=? where TEAM_NAME=?");
    	 	session.setAttribute("Q32",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("33"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A33=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A33").equals(ans))
			if(s33.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A33",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q33=? where TEAM_NAME=?");
    	 	session.setAttribute("Q33",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("34"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A34=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A34").equals(ans))
			if(s34.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A34",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q34=? where TEAM_NAME=?");
    	 	session.setAttribute("Q34",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("35"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A35=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A35").equals(ans))
			if(s35.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A35",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q35=? where TEAM_NAME=?");
    	 	session.setAttribute("Q35",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("36"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A36=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A36").equals(ans))
			if(s36.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A36",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q36=? where TEAM_NAME=?");
    	 	session.setAttribute("Q36",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("37"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A37=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A37").equals(ans))
			if(s37.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A37",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q37=? where TEAM_NAME=?");
    	 	session.setAttribute("Q37",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("38"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A38=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A38").equals(ans))
			if(s38.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A38",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q38=? where TEAM_NAME=?");
    	 	session.setAttribute("Q38",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("39"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A39=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A39").equals(ans))
			if(s39.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A39",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q39=? where TEAM_NAME=?");
    	 	session.setAttribute("Q39",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("40"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A40=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A40").equals(ans))
			if(s40.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A40",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q40=? where TEAM_NAME=?");
    	 	session.setAttribute("Q40",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("41"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A41=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A41").equals(ans))
			if(s41.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A41",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q41=? where TEAM_NAME=?");
    	 	session.setAttribute("Q41",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("42"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A42=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A42").equals(ans))
			if(s42.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A42",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q42=? where TEAM_NAME=?");
    	 	session.setAttribute("Q42",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("43"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A43=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A43").equals(ans))
			if(s43.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A43",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q43=? where TEAM_NAME=?");
    	 	session.setAttribute("Q43",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("44"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A1=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A1").equals(ans))
			if(s44.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A44",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q44=? where TEAM_NAME=?");
    	 	session.setAttribute("Q44",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("45"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A5=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A45").equals(ans))
			if(s45.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A45",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q45=? where TEAM_NAME=?");
    	 	session.setAttribute("Q45",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
     }
	}
	else if(answer.equals("46"))
	{
		String res="select * from ANSWERS where TEAM_NAME='Shinjanee'";
		PreparedStatement s=conn.prepareStatement(res);
		ResultSet rs=s.executeQuery();
		PreparedStatement ps=conn.prepareStatement("update ANSWERS set SCORE=?,A46=? where TEAM_NAME=?");
		while(rs.next()){
		if(rs.getString("A46").equals(ans))
			if(s46.equals("0"))
				ss+=10;}
	 	session.setAttribute("SCORE",ss);
	 	session.setAttribute("A46",ans);
		ps.setInt(1,ss);
		ps.setString(2,ans);
		ps.setString(3,name);
		int i=ps.executeUpdate();
		if(request.getParameter("submit") != null) {
    		PreparedStatement p=conn.prepareStatement("update QUESTIONS set Q46=? where TEAM_NAME=?");
    	 	session.setAttribute("Q46",answer);
    	 	p.setString(1,answer);
    		p.setString(2,name);
    		int j=p.executeUpdate();
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