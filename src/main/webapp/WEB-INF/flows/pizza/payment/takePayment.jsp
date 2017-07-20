<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<sf:form commandName="paymentDetails">
		<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey }">
		<sf:label path="paymentType">付款方式: </sf:label>
		<sf:radiobuttons path="paymentType" 
			items="${paymentTypeList}"/>
		<br />
		<sf:label path="creditCardNumber">卡号: </sf:label>
		<sf:input path="creditCardNumber"/>
		<br />
		<input type="submit" name="_eventId_paymentSubmitted" value="提交付款">
		<input type="submit" name="_eventId_cancel" value="取消" >
	</sf:form>
</body>
</html>