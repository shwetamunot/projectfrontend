<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!--<%@ page import="niit.model.User" %>-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table cellspacing-="2" align="center">
<tr bgcolor="blue">
<td>User Id</td> 
<td>User Name</td> 
<td>User Address</td> 
<td>User Phoneno</td> 
<td>User Country</td> 
<td>User Email</td> 
<td>User role</td> 
<td>Operation</td>
<td>Operation</td>
</tr>
<c:forEach items="${userList}" value="user">
<tr bgcolor="red">
<td>${user.useId}</td>
<td>${user.name}</td>
<td>${user.address}</td>
<td>${user.phone}</td>
<td>${user.country}</td>
<td>${user.role}</td>
<td>${user.email}</td>
<td>UPDATE/DELETE</td>

<a href="<c:url value="deleteUser/${user.useId}"/>">UPDATE</a>
<a href="<c:url value="UpdateUser/${user.useId}"/>">DELETE</a>

</tr>
</c:forEach>
</table>
</body>
</html>