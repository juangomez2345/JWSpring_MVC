<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>price increase</title>
<style> .error { color: red; } </style>
</head>
<body>
  <fmt:message key="priceincrease.heading"/>
  <p>
  <form:form method="post" commandName="priceIncrease">
    <table border="0">
      <tr>
        <td>Increase (%):</td>
        <td><form:input path="percentage"/></td>
        <td><form:errors path="percentage" cssClass="error"/></td>
      </tr>
    </table>
    <br>
    <input type="submit" value="increase">
  </form:form>
  
  <br><a href="<c:url value="hello.htm"/>">Home</a>
  
  
</body>
</html>