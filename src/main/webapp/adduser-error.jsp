<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light text-center p-5">
	<div class="alert alert-danger">
		<strong>Sorry!</strong>An error occurred.
	</div>  
	<div class="mt-4">
		<jsp:include page="userform.html"></jsp:include>
	</div>
</body>
</html>