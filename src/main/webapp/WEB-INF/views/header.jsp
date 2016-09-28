<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<header>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		
		<nav class="navbar navbar-default">
	        <div class="container">
	            <div class="container-fluid">
	                <div class="navbar-header">
	                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	                        <span class="sr-only">Toggle navigation</span>
	                        <span class="icon-bar"></span>
	                        <span class="icon-bar"></span>
	                        <span class="icon-bar"></span>
	                    </button>
	                    <a class="navbar-brand" href="#">InfoBeacons</a>
			    <a class="navbar-brand active">Bem Vindo, ${pageContext.request.userPrincipal.name}</a>
	                </div>
	                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a href="${contextPath}/listBeacons">Lista de Beacons</a></li>
	                        <li><a href="${contextPath}/registration">Criar uma Conta</a></li>
	                        <li><a href="${contextPath}/addBeacon">Cadastrar Beacon</a></li>
	                        <li><a href="#" onclick="document.forms['logoutForm'].submit()" class="sair">Sair</a></li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </nav>	    
	</c:if>
</header>
