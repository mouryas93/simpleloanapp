<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Application</title>
</head>
<body>

	<!-- <form action="apply" method="POST" id="testform"> -->
	<div class="container">

	  <jsp:include page="header.jsp"/>

      <div class="row">
	      
	      <div class="col-md-2"></div>
	      
	      <div class="col-md-8">
			  
			  <div class="row">

			  	<div class="col-lg-6">
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">First Name</label>
					  	<div class="col-sm-7">
					  		<input type="text" name="firstName" class="form-control firstName" placeholder="FirstName" aria-label="FirstName">
					  	</div>
					  </div>
					 
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Last Name</label>
					  	<div class="col-sm-7">
					  		<input type="text" name="firstName" class="form-control lastName" placeholder="LastName" aria-label="LastName">
					  	</div>
					  </div>
					
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">SSN</label>
					  	<div class="col-sm-7">
					  		<input type="text" name="ssn" class="form-control ssn" placeholder="SSN" aria-label="SSN">
					  	</div>
					  </div>
		
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Address</label>
					  	<div class="col-sm-7">
					  		<input type="text" name="address" class="form-control address" placeholder="Address" aria-label="Address">
					  	</div>
					  </div>
					  
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">City</label>
					  	<div class="col-sm-7">
					  		<input type="text" name="city" class="form-control city" placeholder="City" aria-label="City">
					  	</div>
					  </div>
			  	
			  	</div>

			  	<div class="col-lg-6">
			  	
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Zip Code</label>
					  	<div class="col-sm-7">
					  		<input type="text" name="zipcode" class="form-control zipcode" placeholder="ZipCode" aria-label="ZipCode">
					  	</div>
					  </div>
					  	
					  <div class="col-xs-12" style="height:10px;"></div>
					  	
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">First Name</label>
					  	<div class="col-sm-7">
							<input type="text" name="cartype" class="form-control cartype" placeholder="Car Type" aria-label="Car Type">
					  	</div>
					  </div>
					  	
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Loan Amount</label>
					  	<div class="col-sm-7">
							<input type="text" name="loanAmount" class="form-control loanAmount" placeholder="Loan Amount" aria-label="Loan Amount">
					  	</div>
					  </div>
			
					  <div class="col-xs-12" style="height:10px;"></div>
					  	
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Down Payment</label>
					  	<div class="col-sm-7">
							<input type="text" name="downPayment" class="form-control downPayment" placeholder="Down Payment" aria-label="Down Payment">
					  	</div>
					  </div>
			  	</div>
			  </div>
			  		  	
			  <div class="col-xs-12" style="height:20px;"></div>
			  
			  <div class="col-sm-12 form-group row">
			  	<div class="col-sm-12">
					<button type="button" class="btn btn-primary apply">Submit Application</button>
			  	</div>
			  </div>	
		  </div>
	  </div>
	</div>
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
	    	
	    	$('#info').html('');	    	
	    
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
