<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Criar uma conta</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${contextPath}/resources/css/normalize.css" rel="stylesheet">
	<link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
	<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>

<body>
<%@include file="header.jsp" %>
	
	<div class="container">
        <div class="row">
            <div class="account">
                <div class="Absolute-Center is-Responsive">
                    <div id="text-container">Criar Conta</div>
                    <div class="col-sm-12 col-md-10 col-md-offset-1">
                    	<form:form method="POST" modelAttribute="userForm" id="loginForm">
                    		<spring:bind path="username">
                    			<form:errors path="username"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	                                <form:input class="form-control" type="text" path="username" name='username' placeholder="Usuário" required="true"/>
	                            </div>
	                        </spring:bind>
	                        <spring:bind path="password">
	                            <form:errors path="password"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	                                <form:input class="form-control" type="password" path="password" name='password' placeholder="Senha" required="true"/>
	                            </div>
	                        </spring:bind>
	                        <spring:bind path="passwordConfirm">
	                            <form:errors path="passwordConfirm"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	                                <form:input class="form-control" type="password" path="passwordConfirm" name='password' placeholder="Confirmar senha" required="true"/>
	                            </div>
	                        </spring:bind>
	                            <div class="form-group">
	                                <button type="submit" class="btn btn-def btn-block">Criar</button>
	                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
