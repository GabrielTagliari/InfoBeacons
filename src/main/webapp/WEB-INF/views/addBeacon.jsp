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
	<link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
	<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>

<body>
<%@include file="header.jsp" %>


	<div class="container">
        <div class="row">
            <div class="register">
                <div class="Absolute-Center is-Responsive">
                    <div id="text-container">${titulo}</div>
                    <div class="col-sm-12 col-md-10 col-md-offset-1">
                        <form:form method="POST" modelAttribute="beaconForm" enctype="multipart/form-data" id="loginForm">
                        	<spring:bind path="name">
                        	<form:errors path="name"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	                                <form:input class="form-control" type="text" path="name" name='username' placeholder="Nome"></form:input>
	                            </div>
                            </spring:bind>
                            
                            <spring:bind path="uuid">
                            <form:errors path="uuid"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
	                                <form:input class="form-control" type="text" path="uuid" name='password' placeholder="UUID"></form:input>
	                            </div>
                            </spring:bind>
                            
                            <spring:bind path="major">
                            <form:errors path="major"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-collapse-up"></i></span>
	                                <form:input class="form-control" type="number" path="major" name='password' placeholder="Major"></form:input>
	                            </div>
                            </spring:bind>
                            
                            <spring:bind path="minor">
                            <form:errors path="minor"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-collapse-down"></i></span>
	                                <form:input class="form-control" type="number" path="minor" name='password' placeholder="Minor"></form:input>
	                            </div>
                            </spring:bind>
                            
                            <spring:bind path="mac">
                            <form:errors path="mac"></form:errors>
	                            <div class="form-group input-group ${status.error ? 'has-error' : ''}">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-modal-window"></i></span>
	                                <form:input class="form-control" type="text" path="mac" name='password' placeholder="MAC"></form:input>
	                            </div>
                            </spring:bind>
                            
                            <spring:bind path="text">
                            <form:errors path="text"></form:errors>
	                            <div class="form-group textarea-group ${status.error ? 'has-error' : ''}">
	                                <form:textarea class="form-control" rows="10" path="text" id="comment" name='' placeholder="Descrição" ></form:textarea>
	                            </div>
                            </spring:bind>
                            
                            <c:if test="${isCadastro}">
						        <div class="form-group input-group">
									Inserir imagem: <input type="file" name="file" class="file" id="input-1">
								</div>
					        </c:if>
					        
					        <c:if test="${!isCadastro}">
					        	<div class="form-group input-group">
									Inserir imagem: <input type="file" name="file">
								</div>
					        	<img src="${imgPath}" width="20%" height="20%"/>
					        </c:if>
                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-def btn-block">${botao}</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
