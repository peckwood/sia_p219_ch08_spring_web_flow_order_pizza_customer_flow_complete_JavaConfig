<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>

<head>
<title>Register</title>
</head>

<body>
	<h2>Register</h2>

	<sf:form commandName="order">
		<input type="hidden" name="_flowExecutionKey"
			value="${flowExecutionKey}" />
		<sf:label path="customer.name">Name</sf:label>
		<sf:input path="customer.name" />
		<br />
		<sf:label path="customer.address">address</sf:label>
		<sf:input path="customer.address" />
		<br />
		<sf:label path="customer.city">city</sf:label>
		<sf:input path="customer.city" />
		<br />
		<sf:label path="customer.state">state</sf:label>
		<sf:input path="customer.state" />
		<br />
		<sf:label path="customer.zipCode">zipCode</sf:label>
		<sf:input path="customer.zipCode" />
		<br />
		<sf:label path="customer.phoneNumber"></sf:label>
		<sf:input path="customer.phoneNumber" />
		<br />
		<input type="submit" name="_eventId_register" value="Register" />
		<input type="submit" name="_eventId_cancel" value="Cancel" />
	</sf:form>
</body>
</html>