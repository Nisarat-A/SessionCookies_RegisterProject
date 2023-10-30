<%--
  Created by IntelliJ IDEA.
  User: nisarata
  Date: 30/10/2023 AD
  Time: 07:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select your theme</title>
</head>

<body style="background-color: ${bg_color}">
<div style="margin-left: 150px">
  <h3>Select your theme</h3><hr>
  <form action="set-theme" method="post">
    <input type="radio" name="bg" value="yellow">yellow<label style="background-color: yellow"> &nbsp;&nbsp; </label><br>
    <input type="radio" name="bg" value="lightpink">lightpink<label style="background-color: lightpink"> &nbsp; &nbsp;</label><br>
    <input type="radio" name="bg" value="babyblue">babyblue<label style="background-color: lightblue"> &nbsp;&nbsp; </label><br>
    <hr>
    <input type="submit" value="ok">

  </form>
</div>
</body>
</html>
