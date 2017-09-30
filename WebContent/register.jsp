<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
title>CODE CASINO</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="css/regstyle.css">
<script>
window.oncontextmenu = function () {
return false;
}
</script>
    <script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
    <script type="text/javascript" charset="utf-8">
	document.onkeydown = function(){
  switch (event.keyCode){
        case 116 : //F5 button
            event.returnValue = false;
            event.keyCode = 0;
            return false;
        case 82 : //R button
            if (event.ctrlKey){ 
                event.returnValue = false;
                event.keyCode = 0;
                return false;
            }
		case 37 : //left arrow
            if (event.altKey){ 
                event.returnValue = false;
                event.keyCode = 0;
                return false;
            }
		case 39 : //Right arrow
            if (event.altKey){ 
                event.returnValue = false;
                event.keyCode = 0;
                return false;
            }
		case 85 : //U button
            if (event.ctrlKey){ 
                event.returnValue = false;
                event.keyCode = 0;
                return false;
            }
    }
}
</script>
</head>

<body background='imgs/login.jpg'>

	<div class="header">
	<center><h1><u>CODE  CASINO</u></h1></center>
	</div>

<form action="regdata.jsp">
	<div class="container">
	<div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        	<div class="panel">
        		<div class="panel-heading">
			     <h2 class="panel-title"><center><h2><u><strong>REGISTER YOURSELF!</strong></u></h2></center> </h2>
			 	</div>
			 		<div class="panel-body">
						<div class="form-group"><!-- Add the required field to all input boxes-->
			    				<input type="text" name="teamname" id="teamname" class="form-control input-md" placeholder="TEAM NAME" autocomplete="off" required>
			    			</div>
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                            <input type="text" name="member1name" id="member1name" class="form-control input-md" placeholder="First Member's Name" autocomplete="off"  required >
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="member2name" id="member2name" class="form-control input-md" placeholder="Second Member's Name" autocomplete="off"  >
			    					</div>
			    				</div>
			    			</div>
                            <div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="form-control input-md" placeholder="Email Address" autocomplete="off"  required>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" maxlength="10" name="contact" id="contact" class="form-control input-md" placeholder="Contact Number" pattern="[1-9]{1}[0-9]{9}" autocomplete="off"  required >
			    					</div>
			    				</div>
			    			</div>
			    			
			    			<div class="form-group">
			    				<input type="text" name="college" id="college" class="form-control input-md" placeholder="College " autocomplete="off"  required>
			    			</div>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-md" placeholder="Password" autocomplete="off"  required>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-md" placeholder="Confirm Password" autocomplete="off"  required>
			    					</div>
			    				</div>
			    			</div>
			    			<div>
			    			<button type="submit"  class="btn btn-success btn-block">Register</button>
			    		</div>
			    		</form>
			    	</div>
	    	</div>
    	</div>
    </div>
</div>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>
</html>