<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.vrashti.dao.UserDao, com.vrashti.bean.*, java.util.*" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<%
    List<User> list = UserDao.getAllRecords();
    request.setAttribute("list", list);
%>
<div class="container mt-5">
    <h2 class="text-center text-primary mb-4">User List</h2>
    <table class="table table-bordered table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Password</th>
                <th>Email</th>
                <th>Sex</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${list}" var="u">
                <tr>
                    <td>${u.getId()}</td>
                    <td>${u.getName()}</td>
                    <td>${u.getPassword()}</td>
                    <td>${u.getEmail()}</td>
                    <td>${u.getSex()}</td>
                    <td>${u.getCountry()}</td>
                    <td><a href="editform.jsp?id=${u.getId()}" class="btn btn-sm btn-warning">Edit</a></td>
                    <td><a href="deleteuser.jsp?id=${u.getId()}" class="btn btn-sm btn-danger">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="text-center mt-4">
        <a href="adduserforms.jsp" class="btn btn-success">Add New User</a>
    </div>
</div>
</body>
</html>
