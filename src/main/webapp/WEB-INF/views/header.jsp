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
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Infobeacons</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Bem-vindo, ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="${contextPath}/listBeacons">Lista de Beacons</a></li>
					<li><a href="${contextPath}/registration">Criar uma conta</a></li>
					<li><a href="${contextPath}/addBeacon">Cadastrar Beacon</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">				
					<li><a href="#" onclick="document.forms['logoutForm'].submit()">Sair</a></li>
				</ul>
			</div>
		</nav>
	</c:if>
</header>