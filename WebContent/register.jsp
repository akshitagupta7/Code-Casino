<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Registration</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script
  src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
  crossorigin="anonymous"></script>
  <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
<script src="https://npmcdn.com/bootstrap@4.0.0-alpha.5/dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/regstyle.css">

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
			    						<input type="text" name="member2name" id="member2name" class="form-control input-md" placeholder="Second Member's Name" autocomplete="off"  required >
			    					</div>
			    				</div>
			    			</div>
                            <div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="email" name="email" id="email" class="form-control input-md" placeholder="Email Address" autocomplete="off"  required>
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