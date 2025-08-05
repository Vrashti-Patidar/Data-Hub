<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Saved</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="alert alert-success text-center" role="alert">
        <h4 class="alert-heading">Record successfully saved!</h4>
    </div>
    <div class="card p-4 shadow-sm">
        <jsp:include page="userform.html"></jsp:include>
    </div>
</div>
</body>
</html>