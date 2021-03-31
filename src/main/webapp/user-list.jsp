<%--
  Created by IntelliJ IDEA.
  User: rnebeker
  Date: 3/31/2021
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: rnebeker
  Date: 3/23/2021
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gear List</title>
    <style>
        a {
            background-color: black;
            border: none;
            border-radius: 4px;
            color: white;
            padding: 16px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }
        a:hover {
            background-color: white;
            color: black;
            border: 2px solid black;
        }
    </style>
</head>
<body>
<h1 align="center">Rob's Sport's Rentals</h1>
<h2 align="center">
    <a href="${pageContext.request.contextPath}/user-form.jsp">Rent Equipment</a>
    <a href="${pageContext.request.contextPath}/index.jsp">Main Page</a>
</h2>
<h3 align="center">Here is a list of the Current Rentals in our store</h3>
<h4 align="center">skis, baseball glove, baseball bat, basketball, golf clubs, skateboard, bike, surfboard </h4>

<div align="center">
    ${listUser}
</div>
</body>
</html>

