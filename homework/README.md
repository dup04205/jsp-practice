# JSP 프로그래밍 과제 (`time.jsp`)

## 1. 과제 내용
> 본인의 학번과 이름, 현재 날짜와 시각을 출력(자바 코드 이용)하는 완전한 JSP 페이지를 작성하여 과제물 파일에 적어 넣고, 소스 코드가 보이는 편집 화면과 브라우저의 주소란과 실행 결과가 보이는 화면을 그림으로 캡처하여 붙여 넣으시오. 동적 웹프로젝트(웹 애플리케이션 프로젝트)를 만들고, 파일 이름은 `time.jsp`로 하며, 다른 도구를 사용해도 무방하나 사용한 도구를 명시해야 한다.

## 2. 파일 구성

| 파일 | 내용 |
|---|---|
| `time.jsp` | 학번(`202600000`), 이름(`홍길동`), 현재 날짜와 시각(`java.time.LocalDateTime`, `DateTimeFormatter` 이용)을 출력하는 JSP 페이지 |
| `WEB-INF/web.xml` | 동적 웹 프로젝트 배포 서술자 (Jakarta EE 10 / Servlet 6.0) |

## 3. 사용한 개발 및 실행 도구 명세
- **운영체제(OS)**: macOS
- **통합 개발 환경(IDE)**: Antigravity IDE (VS Code 기반 편집기)
- **자바 개발 키트(JDK)**: OpenJDK 26.0.2.1
- **웹 애플리케이션 서버(WAS)**: Apache Tomcat 10.1.59
- **실행 URL**: `http://localhost:8080/jsp_homework/time.jsp`
