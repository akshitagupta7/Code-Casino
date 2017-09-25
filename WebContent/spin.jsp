<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>Wheel of Fortune </title>

	  <!-- Bootstrap core CSS -->
		<link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Joti+One" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

	<!-- Font Awesome CDN-->
	<script src="https://use.fontawesome.com/6c522c1f28.js"></script>

    <!-- Custom styles for this template -->
	<link href="..\css\spin.css" rel="stylesheet">
		
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body  onload="calltimer()">
<form name="form" method="post" action="score.jsp">

	<div class="container-fluid">
 <div class="row">

	<div class="col-sm-8 col-md-8">
	    <div id="chart"></div>
	</div>
	
	<div class="col-sm-4 col-md-4">
	<div id="clockdiv"><br>
		  <div id="timer"><span id="countdown"></span>
		  		  <input type="hidden" id="minute" name="minute" value="60">
		  <input type="hidden" id="second" name="second" value="0">
		  </div>
</div>
		<div id="question"><h1></h1></div>
		<div class="input-group input-group-lg">
           <span class="input-group-addon" id="sizing-addon1"><i class="fa fa-lightbulb-o" aria-hidden="true"></i></span>
           <input type="text" name="ans1" id="ans1" class="form-control" size="105" placeholder="Enter Answer"  autocomplete="off" required required>
        	<input type="hidden" id="pick" name="pick" value="">
        	<input type="hidden" id="demo" name="demo" value="before">
        	<input type="hidden" id="scr" name="scr" value="unclicked">
        	
        </div>
	</div>
 </div>
 <div class="row">
    <div class="col-sm-12 col-md-12">
		
			<button type="submit" name="submit" class="btn btn-lg" onClick="button1()">SUBMIT</button>
			<button type="button" id="hint" name="hint" onClick="mymfunction()" class="btn btn-lg" data-toggle="modal" data-target="#hintmodal">A HINT MAYBE</button>
			<button type="button" name="button" class="btn btn-lg"  data-toggle="modal" data-target="#scoremodal">SCORE</button>
			<a href="instructions.jsp"><button class="btn btn-lg" data-toggle="modal" data-target="#instModal">READ INSTRUCTIONS</button></a>
			<a href="end.jsp"><button class="btn btn-lg">QUIT</button></a>
	</div>		 
 
 </div>
</div>
</form>
    
    <script type="text/javascript">
        
    function button1()
    {
        document.form.submit.value = "yes";
        form.submit();
    } 
        
        function fun()
        {
            window.location="end.jsp";
        } 
          
        </script>
    
    
<!-- Modal1 -->
<div id="scoremodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal1 content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">SCORE</h4>
      </div>
      <div class="modal-body">
      <%  
	String scor=(String)request.getParameter("scr");
	String nn=(String)session.getAttribute("TEAM_NAME");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
	
	
	try
	{
	if (scor != null && scor.compareTo("clicked") != 0)
{
	
	Statement stat= connection.createStatement();
	String r="select SCORE from ANSWERS where TEAM_NAME=?";
	PreparedStatement t=connection.prepareStatement(r);
	t.setString(1,nn);
	ResultSet rst=t.executeQuery();
	%>
	  <p style="font-size:50px">SCORE: <%while(rst.next()){out.print(rst.getInt("SCORE"));} %></p>
	  <%
}
}

catch(Exception e)
{
	out.print(e);
}
	
%>
      
    
      </div>
    </div>

  </div>
</div>
<!-- Modal1 -->
<div id="hintmodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal1 content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">HINT</h4>
      </div>
      <div class="modal-body">
      </div>
    </div>

  </div>
</div>

<div class="modal fade" id="instModal" tabindex="-1" role="dialog" aria-labelledby="instModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
       <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="instModalLabel">INSTRUCTIONS</h4>
       </div>
     <div class="modal-body">
        <ol><big><h4>
     <li>The game is a completely random event.</li>
     <li>Spin the wheel to get a question.</li>
     <li>The questions based on data structures, algorithms,Basic Programming Concepts or reasoning..</li>
     <li>After brain storming with the question Submit the answer!</li>
     <li>Now your luck decides what reward you get for a correct answer</li>
     <li>The timer to keep on ticking and fate decides whether the next question is harder or easier</li>
     <li>Wanna quit? You can't resume. Everybody gets one chance!</li> 
	 <li>Want a hint? You may lose score!</li>
	 <li>Score the maximum in 45 minutes to win!</li>
	</h4>
	</big>
	</ol> 
    </div>
   </div>
  </div>
</div>
<script>

<%

if(request.getParameter("submit") != null) {
		String n=(String)session.getAttribute("TEAM_NAME");
		String minute=(String)request.getParameter("minute");
		String second=(String)request.getParameter("second");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
		Statement statement= con.createStatement();
    		PreparedStatement prep=con.prepareStatement("update ANSWERS set minute=?,second=? where TEAM_NAME=?");
    	 	prep.setString(1,minute);
			prep.setString(2,second);
			prep.setString(3,n);
			System.out.println("hey");
    		int k=prep.executeUpdate();
    		if(k==1){
    			System.out.println("no hey");
    		}
     }
     %>




var interval;



<%int a=0;
   int b=0;
try {
	 ResultSet rsm=null;
	 //ResultSet rsm2=null;
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
  if(con!=null)
      System.out.println("Data is successfully retrieved!");
  else
      System.out.println("no connection");
  String sql="select minute , second from  ANSWERS";
  //String sq2="select second from  ANSWERS";
  // PreparedStatement ps = con.prepareStatement(sql);
     //   ps.executeUpdate();
     Statement stmt = null;
         stmt=con.createStatement();  

         rsm=stmt.executeQuery(sql);
         //rsm2=stmt.executeQuery(sq2);
         // In this part u extract time from database
while(rsm.next()) { 
 a=rsm.getInt(1);
 b=rsm.getInt(2);
 System.out.println(rsm.getInt(1)); //+"  "+rs.getString(2)+"  "+rs.getString(3));  
}
//step5 close the connection object  
con.close();
       
}catch(Exception e1)
{
    out.println(e1);
}
%>

var minutes = <%=a%>;
var seconds = <%=b%>;
    window.onload = function() {
        countdown('countdown');
    }

    function countdown(element) {
        interval = setInterval(function() {
            var el = document.getElementById(element);
            if(seconds == 0) {
                if(minutes == 0) {
                    el.innerHTML = "countdown's over!";  
					window.location.href = "end.jsp";
                    clearInterval(interval);
                    return;
                } else {
                    minutes--;
                    seconds = 60;
                }
            }
            if(minutes > 0) {
                var minute_text = minutes + ':';
            } else {
                var minute_text = '';
            }
            var second_text = seconds;
            el.innerHTML =minute_text + ' ' + second_text ;
            seconds--;
            
        }, 1000);
    }

	function calltimer(){
		
		document.getElementById("minute").value=minutes;
		document.getElementById("second").value=seconds;
	}
		document.onclick=function(){
		calltimer();};
	

</script>


</body>

<script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<script src="..\js\spin.js"></script>
 <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js">
   
</html>