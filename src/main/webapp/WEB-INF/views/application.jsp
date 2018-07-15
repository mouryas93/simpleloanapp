<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

	Please fill in the application below
	<!-- <form action="apply" method="POST" id="testform"> -->
		<div class="input-group mb-3">
		  <input type="text" name="firstName" class="form-control firstName" placeholder="FirstName" aria-label="Username"><br>
		  <input type="text" name="lastName" class="form-control lastName" placeholder="LastName" aria-label="Password"><br>
		  <input type="text" name="ssn" class="form-control ssn" placeholder="SSN" aria-label="Password"><br>
		  <input type="text" name="address" class="form-control address" placeholder="Address" aria-label="Password"><br>
		  <input type="text" name="city" class="form-control city" placeholder="City" aria-label="Password"><br>
	      <input type="text" name="zipcode" class="form-control zipcode" placeholder="ZipCode" aria-label="Password"><br>
	      <input type="text" name="cartype" class="form-control cartype" placeholder="Car Type" aria-label="Password"><br>
	      <input type="text" name="loanAmount" class="form-control loanAmount" placeholder="Loan Amount" aria-label="Password"><br>
	      <input type="text" name="downPayment" class="form-control downPayment" placeholder="Down Payment" aria-label="Password"><br>
		</div>
		<button type="button" class="btn btn-primary apply">Click here to Apply</button>
	<!-- </form> -->
	
	<div id="info"></div>
	
</body>

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

<script>

$(document).ready(function(){

	   /* $(".apply").click(function(){
		var payload = {
			firstName: $('.firstName').val(),
			lastName : $('.lastName').val(),
			ssn : $('.ssn').val()
		};
	    $.post("apply", JSON.stringify(payload), function(data, status){
	        alert("Data: " + data + "\nStatus: " + status);
	    });
	    
	    /*$.post("apply", $( "#testform" ).serialize());*/

	    $(".apply").click(function(){
	    
	    	var payload = {
    			firstName: $('.firstName').val(),
    			lastName : $('.lastName').val(),
    			ssn : $('.ssn').val(),
    			address : $('.address').val(),
    			city : $('.city').val(),
    			zipcode: $('.zipcode').val(),
    			cartype : $('.cartype').val(),
    			loanAmount : $('.loanAmount').val(),
    			downPayment : $('.downPayment').val()
	   		};
	    	
		    $.ajax({
	    		   url: 'apply',
	    		   type: 'POST',
	    		   dataType: 'json',	
	    		   contentType : 'application/json',
	    		   data: JSON.stringify(payload), // converts Javascript object to JSON object, as Backend understands only JSON
	    		   success: function(data) {
	    			   $('#info').innerHTML = 'you have appplied';
	    		   },
	    		   error: function(data) {
	     		      $('#info').html('<p>An error has occurred</p>',data);
	     		   }
	    	});
		    
	    });
	
});	
	
</script>

</html>
