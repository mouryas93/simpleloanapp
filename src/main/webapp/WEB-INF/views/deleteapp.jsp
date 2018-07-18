<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Close Application</title>
</head>
<body>
<div class="container">

	<jsp:include page="header.jsp"/>
	
	<jsp:include page="navbar.jsp"/>
	
	<form:form action="application" method="POST" modelAttribute="loanApplication">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-3">
				<form:input class="form-control applicationId" type="text" path="applicationId"/>
			</div>
			<button type="submit" class="btn btn-primary apply">Delete Application</button>
		</div>
	</form:form>
	
</div>
	
</body>
</html>