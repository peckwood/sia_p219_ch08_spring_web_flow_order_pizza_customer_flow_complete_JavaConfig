<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sf:form commandName="pizza">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		<p>Size:</p>
		<sf:radiobuttons path="size" delimiter="<br />" />
		<br>
		<p>Toppings:</p>
		<sf:checkboxes path="toppings" items="${toppingsList}" 
	                   delimiter="<br />" ></sf:checkboxes>
		<br>
		<input type="submit" name="_eventId_addPizza" value="添加Pizza">
		<input type="submit" name="_eventId_cancel" value="取消">
	</sf:form>
	<p>bug: if none of the toppings are selected, add or cancel button only refresh the page</p>
</body>
</html>