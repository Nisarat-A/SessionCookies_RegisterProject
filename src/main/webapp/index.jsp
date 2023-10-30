<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<c:set var="bg_color" scope="session" value="${cookie.bg_color_cookie.value}"></c:set>
<body style="background-color: ${bg_color} ; margin-left: 100px">
<h2>Menu</h2>
<hr>
<a href="course-list">ลงทะเบียน</a><br>
<a href="course-registered-history">ประวัติลงทะเบียน</a><br>
-------------------------------------------
<br>
<a href="set-theme">Select your theme</a><br>
-------------------------------------------
<br>

<a href="">log out</a>
</body>
</html>