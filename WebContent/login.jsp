<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="css/login.css">

</head>


	<div class="header">
	<center><h1><u>LOGIN</u></h1></center>
</div>

<form method="post" action="logdata.jsp">
	<div class="container">
	<div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        	<div class="panel">
			 		<div class="panel-body">
						<div class="form-group"><!-- Add the required field to all input boxes-->
			    				<input type="text" name="teamname" id="teamname" class="form-control input-md" placeholder="TEAM NAME" autocomplete="off" required>
			    			</div>
			    			

			    			<div class="row">
			    				<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			    					<div class="form-group">
			    						<input type="password" name="password" id="password" class="form-control input-md" placeholder="Password" autocomplete="off"  required>
			    					</div>
			    				</div>
			    			</div>
			    			<div>
			    			<button type="submit"  class="btn btn-success btn-block">Login</button>
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