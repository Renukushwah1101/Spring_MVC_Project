<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/files/css/style.css">
</head>
<body>
	<h4>Submit some information</h4>
	<hr>
	<form:form action="displayUserInfo" modelAttribute="user">
Name:<form:input path="name" required="true" placeholder="Enter name" />
		<p />
		<form:errors path="name" cssStyle="color:red" />
		<p />
		<!--  Gender:Male:<form:radiobutton path="gender" value="male"/>
       Female:<form:radiobutton path="gender" value="female"/>
      -->

		<p />
Gender: Male: <form:radiobutton path="gender" value="Male"
			required="true" />
        Female: <form:radiobutton path="gender" value="female"
			required="true" />
		<p />
		<p />
       
            
Country: <form:select path="country">
			<form:option value="India"></form:option>
			<form:option value="USA" label="The United states"></form:option>
			<form:option value="Ireland"></form:option>
			<form:option value="Thailand"></form:option>
		</form:select>
		<p />
			Introduction:<form:textarea path="introduction" required="true" />
		<p />
		<form:errors path="introduction" cssStyle="color:red" />

		<p />
			Visited:
			China:<form:checkbox path="visited" value="china" />
			India<form:checkbox path="visited" value="india" />
			Bhutan<form:checkbox path="visited" value="bhutan" />
			Kerela<form:checkbox path="visited" value="Kerela" />
		<p />
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>
