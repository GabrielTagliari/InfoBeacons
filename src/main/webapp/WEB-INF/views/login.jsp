<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>
	
	<link href="${contextPath}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
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
        <div class="row">
            <div class="login">
                <div class="Absolute-Center is-Responsive">
                    <div id="text-container">InfoBeacons</div>
                    <div class="col-sm-12 col-md-10 col-md-offset-1">
                    	<form method="POST" action="${contextPath}/login" id="loginForm">
                    		<span class="erro">${error}</span>
		                    <div class="form-group input-group">
		                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		                        <input class="form-control" type="text" name='username' placeholder="Usuário" required="true"/>
		                    </div>
		                    <div class="form-group input-group">
		                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		                        <input class="form-control" type="password" name='password' placeholder="Senha" required="true"/>
		                    </div>
		                    
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							
		                    <div class="form-group">
		                        <button type="submit" class="btn btn-def btn-block">Acessar</button>
		                    </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
