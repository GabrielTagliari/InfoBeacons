<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Beacons</title>
<link href="${contextPath}/resources/css/normalize.css" rel="stylesheet">
<link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
<script src="${contextPath}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="header.jsp" %>
	
	<div class="table-striped">
        <div class="container">
            <table class="table">
                <thead>
                    <tr class="title">
                        <td>Imagem</td>
                        <td>Nome</td>
                        <td>Mac</td>
                        <td>A��es</td>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach items="${beacon}" var="beacon">
	                    <tr>
	                        <td><img src="data:image/jpg;base64,${beacon.img}" alt="teste" width="30px"></td>
	                        <td><c:out value="${beacon.name}"></c:out></td>
	                        <td><c:out value="${beacon.mac}"></c:out></td>
	                        <td><a href="<c:url value='listBeacons/edit/${beacon.id}'/>">Editar</a></td>
	                        <td><a href="<c:url value='listBeacons/remove/${beacon.id}'/>">Excluir</a></td>
	                    </tr>
                	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>