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
        <title>Add New User</title>
    </head>
    <body>
        <script>
            $(function () {
                $('input[name=birthday]').datepicker({ dateFormat: 'dd/mm/yy' }).val();
            });
        </script>

        <div class="container">
            <h2><%= request.getAttribute("title")%> User</h2>
            <form method="POST" action='UserController' name="frmAddUser">
                <input type="hidden" name="token" value="<%= session.getAttribute("token")%>" />
                <input type="hidden" readonly="readonly" name="userid" value="<c:out value="${user.userid}" />" />
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" name="firstName" value="<c:out value="${user.firstName}" />" />
                </div>
                <div class="form-group">
                    <label>Last Name</label>
                    <input type="text" name="lastName" value="<c:out value="${user.lastName}" />" />
                </div>
                <div class="form-group">
                    <label>Genre</label>
                    <input type="radio" name="genre" value="m" <c:if test="${user.genre == 'm'}">checked="checked"</c:if> />Male 
                    <input type="radio" name="genre" value="f" <c:if test="${user.genre == 'f'}">checked="checked"</c:if> />Female
                </div>
                <div class="form-group">
                    <label>Birthday</label>
                    <input type="text" name="birthday" value="<fmt:formatDate pattern="dd/MM/yyyy" value="${user.birthday}" />" autocomplete="off" />
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" name="email" value="<c:out value="${user.email}" />" />
                </div>
                <input type="button" onclick="location.href='index.jsp'" class="btn btn-outline-secondary" value="Back">
                <input type="submit" value="Submit" class="btn btn-success" />
            </form>
        </div>
    </body>
</html>