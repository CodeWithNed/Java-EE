<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>HTTP Calculator</title>
</head>
<body>
<h1>Simple HTTP Calculator</h1>
<form action="calculator" method="get">
    <label for="x">First Number (x):</label><br>
    <input type="number" id="x" name="x" required><br><br>

    <label for="y">Second Number (y):</label><br>
    <input type="number" id="y" name="y" required><br><br>

    <label for="operation">Operation ( + , - , * , / ):</label><br>
    <input type="text" id="operation" name="o" required><br><br>

    <input type="submit" value="Calculate">
</form>

<h2>Result</h2>
<%
    String result = request.getAttribute("result") != null ? (String) request.getAttribute("result") : "Enter values and click Calculate.";
%>
<p><%= result %></p>
</body>
</html>
