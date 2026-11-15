<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.util.Locale" %>
<%
    // 본인의 학번과 이름 설정 (필요 시 아래 값을 본인 학번/이름으로 수정하세요)
    String studentId = "202600000";
    String studentName = "홍길동";

    // URL 파라미터로 학번/이름이 전달된 경우 동적으로 반영
    String paramId = request.getParameter("studentId");
    String paramName = request.getParameter("studentName");
    if (paramId != null && !paramId.trim().isEmpty()) {
        studentId = paramId.trim();
    }
    if (paramName != null && !paramName.trim().isEmpty()) {
        studentName = paramName.trim();
    }

    // 자바 코드를 이용한 현재 날짜와 시각 구하기
    LocalDateTime now = LocalDateTime.now();
    DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy년 MM월 dd일 (E요일)", Locale.KOREAN);
    DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("a hh시 mm분 ss초", Locale.KOREAN);
    DateTimeFormatter fullFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss", Locale.KOREAN);

    String currentDate = now.format(dateFormatter);
    String currentTime = now.format(timeFormatter);
    String fullDateTime = now.format(fullFormatter);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP 과제 - time.jsp (학번, 이름, 현재 날짜와 시각)</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body {
            font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, "Malgun Gothic", "맑은 고딕", sans-serif;
            background: linear-gradient(135deg, #f0f4f8 0%, #d9e2ec 100%);
            color: #102a43;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 24px;
        }
        .card {
            background: #ffffff;
            width: 100%;
            max-width: 640px;
            border-radius: 16px;
            box-shadow: 0 12px 32px rgba(16, 42, 67, 0.12);
            overflow: hidden;
            border: 1px solid #dce5ef;
        }
        .card-header {
            background: #1e3a8a;
            color: #ffffff;
            padding: 24px 32px;
        }
        .badge {
            display: inline-block;
            background: rgba(255, 255, 255, 0.2);
            font-size: 13px;
            font-weight: 600;
            padding: 4px 12px;
            border-radius: 999px;
            margin-bottom: 10px;
        }
        .card-header h1 {
            font-size: 24px;
            font-weight: 700;
        }
        .card-body {
            padding: 32px;
        }
        .info-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 24px;
        }
        .info-table th,
        .info-table td {
            padding: 16px;
            text-align: left;
            border-bottom: 1px solid #e2e8f0;
            font-size: 16px;
        }
        .info-table th {
            width: 35%;
            color: #486581;
            font-weight: 600;
            background: #f8fafc;
        }
        .info-table td {
            color: #102a43;
            font-weight: 700;
        }
        .highlight-time {
            color: #1d4ed8;
            font-size: 18px;
        }
        .tools-box {
            background: #f8fafc;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            padding: 16px 20px;
            font-size: 14px;
            color: #334e68;
            line-height: 1.6;
        }
        .tools-box strong {
            color: #1e3a8a;
        }
        .footer-actions {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 12px;
            flex-wrap: wrap;
        }
        .refresh-btn {
            background: #1e3a8a;
            color: #ffffff;
            border: none;
            padding: 10px 18px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-decoration: none;
        }
        .refresh-btn:hover {
            background: #1d4ed8;
        }
        .edit-form {
            display: flex;
            gap: 8px;
            align-items: center;
            flex-wrap: wrap;
        }
        .edit-form input {
            padding: 8px 12px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            font-size: 13px;
            width: 130px;
        }
        .edit-form button {
            padding: 8px 14px;
            background: #475569;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            font-size: 13px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="card">
        <div class="card-header">
            <span class="badge">Dynamic Web Project · time.jsp</span>
            <h1>학번 · 이름 및 현재 날짜와 시각 출력</h1>
        </div>
        <div class="card-body">
            <table class="info-table">
                <tr>
                    <th>학번</th>
                    <td><%= studentId %></td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td><%= studentName %></td>
                </tr>
                <tr>
                    <th>현재 날짜 (Java)</th>
                    <td><%= currentDate %></td>
                </tr>
                <tr>
                    <th>현재 시각 (Java)</th>
                    <td class="highlight-time"><%= currentTime %></td>
                </tr>
                <tr>
                    <th>표준 타임스탬프</th>
                    <td><%= fullDateTime %></td>
                </tr>
            </table>

            <div class="tools-box">
                <strong>[사용한 개발 및 실행 도구]</strong><br>
                • <strong>개발 도구(IDE)</strong>: Antigravity (VS Code 기반 편집기)<br>
                • <strong>자바 환경(JDK)</strong>: OpenJDK <%= System.getProperty("java.version") %><br>
                • <strong>웹 애플리케이션 서버(WAS)</strong>: <%= application.getServerInfo() %>
            </div>

            <div class="footer-actions">
                <form class="edit-form" method="get" action="time.jsp">
                    <input type="text" name="studentId" placeholder="학번 변경" value="<%= studentId %>">
                    <input type="text" name="studentName" placeholder="이름 변경" value="<%= studentName %>">
                    <button type="submit">적용 및 시각 갱신</button>
                </form>
                <a href="time.jsp?studentId=<%= java.net.URLEncoder.encode(studentId, "UTF-8") %>&studentName=<%= java.net.URLEncoder.encode(studentName, "UTF-8") %>" class="refresh-btn">새로고침</a>
            </div>
        </div>
    </div>
</body>
</html>
