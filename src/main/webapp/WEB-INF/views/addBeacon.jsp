<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/normalize.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="beaconForm">
        <h2>Cadatrar Beacon</h2>
        <spring:bind path="name">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="name" placeholder="Nome" autofocus="true"></form:input>
                <form:errors path="name"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="uuid">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="uuid" placeholder="UUID"></form:input>
                <form:errors path="uuid"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="major">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="number" path="major" placeholder="Major"></form:input>
                <form:errors path="major"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="minor">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="number" path="minor" placeholder="Minor"></form:input>
                <form:errors path="minor"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="mac">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="mac" placeholder="Mac"></form:input>
                <form:errors path="mac"></form:errors>
            </div>
        </spring:bind>
        
        <spring:bind path="text">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="text" placeholder="Texto"></form:input>
                <form:errors path="text"></form:errors>
            </div>
        </spring:bind>
		
		<spring:bind path="img">
            <div class="${status.error ? 'has-error' : ''}">
                <form:input type="text" path="img" placeholder="Caminho da Imagem"></form:input>
                <form:errors path="img"></form:errors>
            </div>
        </spring:bind>        

        <button type="submit">Cadastrar</button>
    </form:form>

</div>
</body>
</html>
