<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%
  List<String> students = (List<String>) application.getAttribute("students");
  if (students == null || students.isEmpty()) {
%>
<p>No students registered yet.</p>
<%
} else {
%>
<ul>
  <% for (String student : students) { %>
  <li><%= student %></li>
  <% } %>
</ul>
<%
  }
%>
