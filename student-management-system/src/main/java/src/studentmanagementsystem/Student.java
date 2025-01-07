package src.studentmanagementsystem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Student")
public class Student extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String course = request.getParameter("course");

        String test = request.getHeader("test");

        List<String> students = (List<String>) getServletContext().getAttribute("students");
        if (students == null) {
            students = new ArrayList<>();
            getServletContext().setAttribute("students", students);
        }

        if (name != null && age != null && course != null) {
            students.add("Name: " + name + ", Age: " + age + ", Course: " + course);
        }

        response.sendRedirect("index.jsp");
    }
}
