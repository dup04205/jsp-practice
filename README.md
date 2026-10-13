# JSP 프로그래밍 실습 파일

한국방송통신대학교 「JSP 프로그래밍」 강의 노트(1~15강)를 바탕으로 실습 코드를 장별로 정리한 저장소.

- 개발 환경: JDK 24, Eclipse IDE for Enterprise Java and Web Developers, Apache Tomcat 11, MariaDB 11.8
- 파일 이름은 교재 예제 번호를 그대로 사용함(예: `5-3.jsp`)
- 교재에 "(일부)"로만 실린 코드는 실행할 수 있도록 page 지시어, `<html>` 골격, import 등을 보충함
- 교재 슬라이드의 오타(예: 9-9.jsp의 태그 순서, `>` 누락)는 바로잡음

## 폴더 구성

| 폴더 | 강 | 주요 내용 | 이클립스 프로젝트 |
|---|---|---|---|
| `ch01-web-and-java` | 1강 웹과 자바 | 서블릿 예제, HTTP 요청·응답 메시지 | HelloJSP |
| `ch02-dev-environment` | 2강 개발환경 설정 | hello.jsp | HelloJSP |
| `ch03-jsp-overview` | 3강 JSP 개요 | 스크립트릿, 표현식, 선언 | HelloJSP |
| `ch04-jsp-mechanism` | 4강 JSP 동작 원리 | 변환된 서블릿, doGet/doPost | HelloJSP |
| `ch05-request-response` | 5강 요청과 응답 | request·response 내장 객체, 폼 파라미터, 리다이렉트 | HelloJSP |
| `ch06-implicit-objects-scope` | 6강 내장 객체와 영역 | application, out, 4개 영역, 속성 | HelloJSP |
| `ch07-modular-jsp` | 7강 모듈화된 JSP 페이지 | jsp:include, jsp:param, include 지시어, jsp:forward | HelloJSP |
| `ch08-cookie` | 8강 쿠키 | 쿠키 생성·읽기·변경·삭제, 경로, 쿠키 로그인 | HelloJSP |
| `ch09-session` | 9강 세션 | session 내장 객체, 세션 로그인/로그아웃 | HelloJSP |
| `ch10-javabean` | 10강 자바빈 | useBean, setProperty, getProperty, 게시글 예제 | HelloJSP |
| `ch11-jdbc` | 11강 JDBC | MariaDB 설치·SQL, member 테이블 CRUD | MariaDBTest |
| `ch12-dao-dto` | 12강 DAO와 DTO | 11강 CRUD를 MemberDAO/MemberDTO로 수정 | MariaDBTest2 |
| `ch13-expression-language` | 13강 표현 언어 | EL 연산자, EL 내장 객체, 자바빈과 EL | HelloJSP |
| `ch14-jstl` | 14강 JSTL | c:set, c:if, c:choose, c:forEach, c:import, c:url, c:out, c:catch, fn | HelloJSP |
| `ch15-member-system` | 15강 회원관리 시스템 | member2 테이블, 회원가입·로그인·수정·탈퇴 | MemberManager |

## 실행 방법(이클립스)

1. Dynamic Web Project를 만들고(Target runtime: Tomcat v11.0) 다음과 같이 복사함
   - `*.jsp`, `*.html`, `webapp/` 아래 파일 → `src/main/webapp/`
   - `WEB-INF/web.xml` → `src/main/webapp/WEB-INF/web.xml`
   - `*.java`, `src/` 아래 파일 → `src/main/java/` (패키지 폴더 유지)
2. 필요한 라이브러리를 `src/main/webapp/WEB-INF/lib/`에 넣음
   - 11·12·15강: MariaDB Connector/J (`mariadb-java-client-3.5.x.jar`)
   - 14·15강: JSTL (Tomcat 10 이상은 `jakarta.servlet.jsp.jstl-api-3.0.x.jar`, `jakarta.servlet.jsp.jstl-3.0.x.jar`)
3. 파일을 선택하고 [Run As]-[Run on Server] → `http://localhost:8080/프로젝트이름/파일이름`

## DB 준비(11·12·15강)

```sql
-- root 계정
create database my_db;
create user user@localhost identified by 'user1234';
grant all privileges on my_db.* to user@localhost with grant option;
flush privileges;
```

- 11·12강 member 테이블: `ch11-jdbc/sql/setup.sql`
- 15강 member2 테이블: `ch15-member-system/sql/member2.sql`

## 참고

- 서블릿 코드는 Tomcat 10 이상에 맞게 `jakarta.servlet.*` 패키지를 사용함(Tomcat 9 이하는 `javax.servlet.*`)
- JSTL taglib URI는 교재대로 `http://java.sun.com/jsp/jstl/core`를 사용함. JSTL 3.0 이상에서는 `jakarta.tags.core`도 사용 가능
- SQL을 `String.format`으로 조립하는 방식은 교재 그대로임. 실무에서는 SQL 인젝션 방지를 위해 `PreparedStatement`를 사용함
