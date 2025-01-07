<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>
</head>
<body>
<h1>Welcome to the Student Management System</h1>
<form action="Student" method="post">
    <label for="name">Name:</label><br>
    <input type="text" id="name" name="name" required><br><br>

    <label for="age">Age:</label><br>
    <input type="number" id="age" name="age" required><br><br>

    <label for="course">Course:</label><br>
    <input type="text" id="course" name="course" required><br><br>

    <input type="submit" value="Add Student">
</form>
<hr>
<h2>List of Students</h2>
<jsp:include page="StudentList.jsp"/>
</body>
</html>
