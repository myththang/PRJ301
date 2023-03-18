/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import Model.ExamCode;
import Model.Quiz;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author myth
 */
public class ExamController extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String questionNumber = req.getParameter("questionNumber");
        ExamCode ec = new ExamCode();
        String examCode = req.getParameter("ExamCode");
        int examId =ec.getExamId(examCode);
        Quiz q = new Quiz();
        ArrayList<Quiz> quiz = q.getListQuiz(examId);
        req.setAttribute("quiz", quiz);
        req.setAttribute("questionNumber", questionNumber);
        req.getRequestDispatcher("Exam.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession sess = req.getSession();
        if (sess.getAttribute("account") == null) {
            resp.sendRedirect("Login.jsp");
        }else{
        ExamCode ec = new ExamCode();
        String examCode = req.getParameter("ExamCode");
        int examId =ec.getExamId(examCode);
        Quiz q = new Quiz();
        ArrayList<Quiz> quiz = q.getListQuiz(examId);
        req.setAttribute("quiz", quiz);
        req.setAttribute("questionNumber", "1");
        req.getRequestDispatcher("Exam.jsp").forward(req, resp);
        }
    }
        
}
