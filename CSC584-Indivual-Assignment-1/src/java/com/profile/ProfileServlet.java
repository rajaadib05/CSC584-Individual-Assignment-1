package com.profile;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/ProfileServlet"})
public class ProfileServlet extends HttpServlet {

    // Handles direct GET requests (e.g. if user types URL or refreshes) -> Redirects back to form
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.html");
    }

    // Handles form submission via HTTP POST[cite: 1]
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        // Retrieve form parameters
        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String programme = request.getParameter("programme");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

        // Set attributes for the JSP page
        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("programme", programme);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("intro", intro);

        // Forward to profile.jsp[cite: 1]
        RequestDispatcher dispatcher = request.getRequestDispatcher("profile.jsp");
        dispatcher.forward(request, response);
    }
}