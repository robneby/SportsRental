<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
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
<h1 align="center">Rob's Sports Rental</h1>
<h2 align="center">
    <a href="${pageContext.request.contextPath}/user-form.jsp">Rent Equipment</a>
    <a href="${pageContext.request.contextPath}/user-list.jsp">Current Rentals</a>
</h2>

</body>
</html>