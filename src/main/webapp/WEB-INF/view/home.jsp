<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>Dunder Mifflin Company Home Page</title>
</head>

<body>

	<h2>Dunder Mifflin Company Home Page</h2>
	<hr>
	
	<p>
	
		Welcome to the Dunder Mifflin company home page!
	
	</p>
	
	<hr>
	
		<!-- Display user name and role -->
		
		<p>
		
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
		
		</p>
	
	<hr>
	
	<!-- Add a logout button -->
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>

</body>

</html>