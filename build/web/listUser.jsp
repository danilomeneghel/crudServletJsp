<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet" />
        <link type="text/css" href="css/style.css" rel="stylesheet" />
        <link type="text/css" href="css/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery-1.12.4.js"></script>
        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <title>Show All Users</title>
    </head>
    <body>
        <div class="container">
            <h2>List Users</h2>
            <p><a href="UserController?action=insert" class="btn btn-success" role="button">Add User</a></p>
            <c:choose>
                <c:when test = "${users.size() == 0}">
                    <div class="alert alert-info">No data recorded.</div>
                </c:when>    
                <c:otherwise>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>User Id</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Genre</th>
                                <th>Birthday</th>
                                <th>Email</th>
                                <th colspan=2>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${users}" var="user">
                                <tr>
                                    <td><c:out value="${user.userid}" /></td>
                                    <td><c:out value="${user.firstName}" /></td>
                                    <td><c:out value="${user.lastName}" /></td>
                                    <td><c:out value="${user.genre}" /></td>
                                    <td><fmt:formatDate pattern="dd/MM/yyyy" value="${user.birthday}" /></td>
                                    <td><c:out value="${user.email}" /></td>
                                    <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>" class="btn btn-primary">Update</a></td>
                                    <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this item?')">Delete</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>
    </body>
</html>