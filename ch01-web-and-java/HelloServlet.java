package com.servlet.test;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 1강 서블릿 프로그램 예: 오늘의 날짜와 시간을 출력하는 서블릿
@WebServlet("/HelloServlet1")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html; charset=UTF-8");
        java.io.PrintWriter out = response.getWriter();
        out.println("<html><head><title>로그인</title></head>");
        out.println("<body><h2>헬로 서블릿</h2>");
        out.println("오늘의 날짜와 시간은 : " + new java.util.Date());
        out.println("</body></html>");
    }
}
