/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.Account;
import Model.ExamCode;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author myth
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String examCode = req.getParameter("examcode");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Account a = new Account(username, password);
        ExamCode ec = new ExamCode();
        if (!ec.checkExamCode(examCode)) {
            req.setAttribute("error", "Invalid exam code");
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
        if (!a.checkAccount()) {
            req.setAttribute("error", "Invalid username or password");
            req.getRequestDispatcher("Login.jsp").forward(req, resp);
        }
        HttpSession session = req.getSession();
        session.setAttribute("account", a);
        String studentName = a.getName();
        String duration = ec.getDuration(examCode);
        req.setAttribute("ExamCode", examCode);
        req.setAttribute("Student", studentName);
        req.setAttribute("Duration", duration);
        req = new HttpServletRequestWrapper(req) {
            @Override
            public String getMethod() {
                return "GET";
            }
        };
        req.getRequestDispatcher("exam").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("Login.jsp");
    }

}
