<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		Customer name: ${order.customer.name}<br />
		Customer address: ${order.customer.address}<br />
		Customer city: ${order.customer.city}<br />
		Customer state: ${order.customer.state}<br />
		Customer zip code: ${order.customer.zipCode}<br />
		Customer phone number: ${order.customer.phoneNumber}
	</p>
	<p>Pizzas:</p>
	<ul>
		<c:if test="${!order.pizzas.isEmpty() }">
			<c:forEach items="${order.pizzas }" var="pizza" >
			<li>
				Size: ${pizza.size }
				<br />
				Toppings:
				<ul>
					<c:forEach items="${pizza.toppings }" var="topping">
						<li>${topping}</li>	
					</c:forEach>
				</ul>
			</li>
		</c:forEach>
		</c:if>
		<c:if test="${order.pizzas.isEmpty() }">你还没有添加Pizza,点击<a href="${flowExecutionUrl}&_eventId=createPizza">这里</a>添加</c:if>
	</ul>
	<a href="${flowExecutionUrl}&_eventId=createPizza">添加Pizza</a> 
	<a href="${flowExecutionUrl}&_eventId=checkout">结账</a> 
	<a href="${flowExecutionUrl}&_eventId=cancel">Cancel</a>
</body>
</html>