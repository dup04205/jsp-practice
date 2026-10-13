package com.servlet.test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // request.setCharacterEncoding("UTF-8");
        java.io.PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>doGet() 메서드</h1>");
        String name = request.getParameter("name");
        out.println(name);
        out.println("</body></html>");
        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");   // POST: 파라미터를 읽기 전에 호출
        java.io.PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>doPost() 메서드</h1>");
        String name = request.getParameter("name");
        out.println(name);
        out.println("</body></html>");
        out.close();
    }
}
