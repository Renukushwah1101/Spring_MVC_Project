<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Info</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/files/css/style.css">
</head>
<body>
	Name: ${user.name}
	<p />
	Gender: ${user.gender}
	<p/>
	Country:${user.country }
	<p/>
	Introduction:${user.introduction}
	<p/>
	Visited:
	<ul>
	<c:forEach items="${user.visited}" var="coun">
	<li>${coun}</li>
	</c:forEach>
	</ul>
</body>
</html>