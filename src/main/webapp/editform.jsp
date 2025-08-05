<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
	<%@page import="com.vrashti.dao.UserDao,com.vrashti.bean.User" %>
	<%
	String id=request.getParameter("id");
	User u=UserDao.getRecordById(Integer.parseInt(id));
	%>
	<div class="container mt-5">
		<div class="card shadow p-4">
			<h2 class="mb-4 text-center text-primary">Edit User</h2>
			<form action="edituser.jsp" method="post">
				<input type="hidden" name="id" value="<%=u.getId() %>"/>
				<div class="mb-3">
					<label for="name" class="form-label">Name:</label>
					<input type="text" class="form-control" name="name" value="<%=u.getName()%>" required>
				</div>
				<div class="mb-3">
                	<label for="password" class="form-label">Password:</label>
                	<input type="password" class="form-control" name="password" value="<%= u.getPassword() %>" required>
           		 </div>
            	<div class="mb-3">
                	<label for="email" class="form-label">Email:</label>
                	<input type="email" class="form-control" name="email" value="<%= u.getEmail() %>" required>
            	</div>
            	<div class="mb-3">
                	<label class="form-label">Sex:</label><br>
                	<div class="form-check form-check-inline">
                    	<input class="form-check-input" type="radio" name="sex" value="male" <%= u.getSex().equals("male") ? "checked" : "" %>>
                    	<label class="form-check-label">Male</label>
                	</div>
                	<div class="form-check form-check-inline">
                    	<input class="form-check-input" type="radio" name="sex" value="female" <%= u.getSex().equals("female") ? "checked" : "" %>>
                    	<label class="form-check-label">Female</label>
                	</div>
            	</div>
            	<div class="mb-4">
                	<label for="country" class="form-label">Country:</label>
                	<select name="country" class="form-select">
                    <option <%= u.getCountry().equals("India") ? "selected" : "" %>>India</option>
                    <option <%= u.getCountry().equals("Pakistan") ? "selected" : "" %>>Pakistan</option>
                    <option <%= u.getCountry().equals("Afghanistan") ? "selected" : "" %>>Afghanistan</option>
                    <option <%= u.getCountry().equals("Berma") ? "selected" : "" %>>Berma</option>
                    <option <%= u.getCountry().equals("Other") ? "selected" : "" %>>Other</option>
                	</select>
            	</div>
            	<div class="d-grid">
                	<button type="submit" class="btn btn-success">Update</button>
            	</div>
        	</form>
    	</div>
	</div>
</body>
</html>