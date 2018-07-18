<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>
<html>
<head>
	<title>Application</title>
</head>
<body>

	<div class="container">

	  <jsp:include page="header.jsp"/>

      <div class="row" id="application-form">
	      
	      <div class="col-md-2"></div>
	      
	      <div class="col-md-8">
			
			<form:form action="formapply" method="POST" modelAttribute="loanApplication">	
						  
			  <div class="row">

			  	<div class="col-lg-6">
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">First Name</label>
					  	<div class="col-sm-7">
					  		<form:input type="text" path="firstName" class="form-control firstName" placeholder="FirstName" aria-label="FirstName"/>
					  	</div>
					  </div>
					 
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Last Name</label>
					  	<div class="col-sm-7">
					  		<form:input type="text" path="firstName" class="form-control lastName" placeholder="LastName" aria-label="LastName"/>
					  	</div>
					  </div>
					
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">SSN</label>
					  	<div class="col-sm-7">
					  		<form:input type="text" path="ssn" class="form-control ssn" placeholder="SSN" aria-label="SSN"/>
					  	</div>
					  </div>
		
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Address</label>
					  	<div class="col-sm-7">
					  		<form:input type="text" path="address" class="form-control address" placeholder="Address" aria-label="Address"/>
					  	</div>
					  </div>
					  
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">City</label>
					  	<div class="col-sm-7">
					  		<form:input type="text" path="city" class="form-control city" placeholder="City" aria-label="City"/>
					  	</div>
					  </div>
			  	
			  	</div>

			  	<div class="col-lg-6">
			  	
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Zip Code</label>
					  	<div class="col-sm-7">
					  		<form:input type="text" path="zipcode" class="form-control zipcode" placeholder="ZipCode" aria-label="ZipCode"/>
					  	</div>
					  </div>
					  	
					  <div class="col-xs-12" style="height:10px;"></div>
					  	
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">First Name</label>
					  	<div class="col-sm-7">
							<form:input type="text" path="cartype" class="form-control cartype" placeholder="Car Type" aria-label="Car Type"/>
					  	</div>
					  </div>
					  	
					  <div class="col-xs-12" style="height:10px;"></div>
					  
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Loan Amount</label>
					  	<div class="col-sm-7">
							<form:input type="text" path="loanAmount" class="form-control loanAmount" placeholder="Loan Amount" aria-label="Loan Amount"/>
					  	</div>
					  </div>
			
					  <div class="col-xs-12" style="height:10px;"></div>
					  	
					  <div class="col-sm-12 form-group row">
					  	<label for="" class="col-sm-5 col-form-label">Down Payment</label>
					  	<div class="col-sm-7">
							<form:input type="text" path="downPayment" class="form-control downPayment" placeholder="Down Payment" aria-label="Down Payment"/>
					  	</div>
					  </div>
			  	</div>
			  </div>
			  		  	
			  <div class="col-xs-12" style="height:20px;"></div>
			  
			  <div class="col-sm-12 form-group row">
			  	<div class="col-sm-12">
					Submit Application <input type="submit" class="btn btn-primary apply">
			  	</div>
			  </div>	
			  
		  </form:form>
		  	  
		  </div>
	  </div>
	</div>

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
	
});	
	
</script>

</html>
