package com.suwahas.servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.suwahas.dao.*;

import javax.mail.*;
import javax.mail.internet.*;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String DB_URL = "jdbc:mysql://localhost:3308/ecommerce_cart";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("register-name");
        String email = request.getParameter("register-email");
        String password = request.getParameter("register-password");

        try {
            // Connect to the database
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Insert data into the "user" table
            String query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, password);

            statement.executeUpdate();
            statement.close();
            conn.close();

            // Send an email to the registered user
          SendMail.send(email);

            // Redirect the user after successful registration (you can customize this URL)
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Successfully registered!');");
            out.println("window.location = 'login.jsp';"); // Redirect after showing the alert
            out.println("</script>");

        } catch (SQLException e) {
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Unsuccessfully registered!');");
            out.println("window.location = 'login.jsp';"); // Redirect after showing the alert
            out.println("</script>");

            // Handle database errors or registration failures here
            // You can redirect to an error page or show an error message
        } catch (Exception e) {
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Failed to send email!');");
            out.println("window.location = 'login.jsp';"); // Redirect after showing the alert
            out.println("</script>");

            e.printStackTrace();
            // Handle any exception that occurs while sending the email
        }
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
