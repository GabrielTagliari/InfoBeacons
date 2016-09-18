<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Upload File Request Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${contextPath}/resources/css/normalize.css" rel="stylesheet">
<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${contextPath}/resources/js/jquery-3.1.0.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="header.jsp" %>
	<form method="POST" action="uploadFile">
		
		File to upload: <input type="file" name="file">
 
		Name: <input type="text" name="name">
 
 
		<input type="submit" value="Upload"> Press here to upload the file!
	</form>	
</body>
</html>