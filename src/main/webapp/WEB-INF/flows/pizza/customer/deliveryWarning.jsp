<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Warning</title>
</head>
  <body>
		<h2>Delivery Unavailable</h2>
		
		<p>The address is outside of our delivery area. The order
		may still be taken for carry-out.</p>
		
		<a href="${flowExecutionUrl}&_eventId=accept">Accept</a> | 
		<a href="${flowExecutionUrl}&_eventId=cancel">Cancel</a>
  </body>
</html>