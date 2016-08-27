<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Beacons</title>
<link href="${contextPath}/resources/css/normalize.css" rel="stylesheet">
<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
</head>
<body>
	
	<div class="container">
	<c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
	
        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a href="#" onclick="document.forms['logoutForm'].submit()">Logout</a></h2>
		
    </c:if>
    
	<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
	
	<table>
		<thead>
			<td>Nome</td>
			<td>Uuid</td>
			<td>Major</td>
			<td>Minor</td>
			<td>Mac</td>
			<td>Text</td>
			<td>Img</td>
		</thead>
		<c:forEach items="${beacon}" var="beacon">			
			<td><c:out value="${beacon.name}"></c:out></td>
			<td><c:out value="${beacon.uuid}"></c:out></td>
			<td><c:out value="${beacon.major}"></c:out></td>
			<td><c:out value="${beacon.minor}"></c:out></td>
			<td><c:out value="${beacon.mac}"></c:out></td>
			<td><c:out value="${beacon.text}"></c:out></td>
			<td><c:out value="${beacon.img}"></c:out></td>
		</c:forEach>
	</table>
	
	</div>
</body>
</html>