<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${feedback}" var="feedback">
		<li>${feedback.id}</li>
		<li>${feedback.name}</li>
		<li>${feedback.info}</li>
	</c:forEach>
	<a href="/newFeedback">add new feedback</a>
</body>
</html>