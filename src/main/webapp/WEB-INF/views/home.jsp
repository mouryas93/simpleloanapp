<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
<div class="container">

	<jsp:include page="header.jsp"/>
	
	<jsp:include page="navbar.jsp"/>

    <div class="col-xs-12" style="height:60px"></div>
    
	<form action="login" method="POST">
		<div class="row">
		    <div class="col-md-4"></div>
			<div class="col-md-4">
				  <input type="text" name="userName" class="form-control name" placeholder="Username" aria-label="Username">
				  <div class="col-xs-12" style="height:20px;"></div>
				  <input type="password" name="password" class="form-control password" placeholder="Password" aria-label="Password">
				  <div class="col-xs-12" style="height:20px;"></div>
	  			  <div class="row">
	  			  	<div class="col-md-8"></div>
	  			  	<div class="col-md-4"><button type="submit" class="btn btn-primary submit">Login</button></div>
	  			  </div>
			</div>
		</div>
	</form>
	
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

</script>

</html>
