<%--
  Created by IntelliJ IDEA.
  User: rnebeker
  Date: 3/31/2021
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: rnebeker
  Date: 3/23/2021
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Error</title>
    <style>
        #head {text-align: center;}
    </style>
</head>
<body>
<div id="head">
    <h1>Error</h1>
    <h2><%=exception.getMessage() %><br/> </h2>
</div>
</body>
</html>

