<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<header>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		
		<nav class="navbar navbar-default navbar-static-top">
	        <div class="container-fluid">
	            <div class="container">
	                <div class="navbar-header">
	                    <a class="navbar-brand" href="${contextPath}/listBeacons">InfoBeacons</a>
	                </div>
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a href="#">Bem-vindo, ${pageContext.request.userPrincipal.name}</a></li>
	                        <li><a href="${contextPath}/listBeacons">Lista de Beacons</a></li>
	                        <li><a href="${contextPath}/registration">Criar uma Conta</a></li>
	                        <li><a href="${contextPath}/addBeacon">Cadastrar Beacon</a></li>
	                        <li><a href="#" onclick="document.forms['logoutForm'].submit()" class="sair">Sair</a></li>
	                    </ul>
	            </div>
	        </div>
	    </nav>
	</c:if>
</header>
