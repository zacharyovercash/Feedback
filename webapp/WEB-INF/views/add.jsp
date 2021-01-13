<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add New Feedback</h1>

<form:form modelAttribute="form">
	<form:errors path="name" element="div"/>
	<div>
		<form:label path="name">Project Name</form:label>
		<form:input path="name"/>
		<form:errors path="name"/>
	</div>
	<form:errors path="info" element="div"/>
	<div>
		<form:label path="info">Project Feedback</form:label>
		<form:input path="info"/>
		<form:errors path="info"/>
	</div>
	<div>
		<input type="submit" value="Add Feedback"/>
	</div>

</form:form>
</body>
</html>