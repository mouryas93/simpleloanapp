<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	type="stylesheet">

</head>
<body>


	<div class="container">
		
		<div class="row">
			<div class="col-md">
				<img
					src="${pageContext.request.contextPath}/resources/images/logo.jpg">
			</div>
		</div>	
		<br><br>
		<div class="row">	
			<form action="login" method="POST">
				<div class="col-md">
					<div class="input-group mb-3">
					  <input type="text" name="userName" class="form-control name" placeholder="Username" aria-label="Username">
					  <input type="password" name="password" class="form-control password" placeholder="Password" aria-label="Password">
					  <button type="submit" class="btn btn-primary submit">Click here to Login</button>
					</div>
				</div>
			</form>
		</div>
		
	 <div id="info"></div>
	</div>

</body>

<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

<script>

/* $(document).ready(function() {
    console.log( "ready!" );
    
    $('.submit').click(function(){
    	
    	var userName= $('.name').val();
    	var password= $('.password').val();

    	$.ajax({
    		   url: 'login',
    		   type: 'POST',
    		   dataType: 'json',
    		   data: {
    			 'userName' : userName,
    			 'password' : password
    		   },
    		   success: function() {
    			   $('#info').innerHTML = 'you are succesfully logged in....';
    		   },
    		   error: function() {
     		      $('#info').html('<p>An error has occurred</p>');
     		   }
    		});
    	
    });
    
/*     $("#orderInfo").click(function(){
    	$.get('orderInfo');
    });
 */    
    
}); */


</script>

</html>
