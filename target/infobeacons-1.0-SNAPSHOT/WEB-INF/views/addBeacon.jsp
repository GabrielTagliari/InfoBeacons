<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cadastrar beacon</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${contextPath}/resources/css/normalize.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
	<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>

<body>
<%@include file="header.jsp" %>

    <form:form method="POST" modelAttribute="beaconForm">
        <h2>Cadatrar Beacon</h2>
        <spring:bind path="name">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" class="form-control" placeholder="Nome" autofocus="true"></form:input>
                <form:errors path="name"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="uuid">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="uuid" class="form-control" placeholder="UUID"></form:input>
                <form:errors path="uuid"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="major">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:input type="number" path="major" class="form-control" placeholder="Major"></form:input>
                <form:errors path="major"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="minor">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:input type="number" path="minor" class="form-control" placeholder="Minor"></form:input>
                <form:errors path="minor"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="mac">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="mac" class="form-control" placeholder="Mac"></form:input>
                <form:errors path="mac"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="text">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:textarea type="text" path="text" class="form-control" placeholder="Texto"></form:textarea>
                <form:errors path="text"></form:errors>
            </div>
        </spring:bind>
		
		<spring:bind path="img">
            <div class="form-group" class="${status.error ? 'has-error' : ''}">
                <form:textarea path="img" class="form-control" placeholder="Caminho da Imagem"></form:textarea>
                <form:errors path="img"></form:errors>
            </div>
        </spring:bind>        

        <button class="btn btn-lg btn-primary btn-block" type="submit">Cadastrar</button>
    </form:form>
</body>
</html>
