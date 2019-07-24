<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hello</title>
</head>
<body>
	<fmt:message key="title" />
	<p><c:out value="${model.now}" /></p>
	
	List
	<c:forEach items="${model.products}" var="prod">
	  <c:out value="${prod.description}" />
	  <i>$<c:out value="${prod.price}" /></i>
	  <br>
	</c:forEach>
	
    <br><a href="<c:url value="priceincrease.htm"/>">Increase Prices</a>	
	
</body>
</html>