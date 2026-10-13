# 15강 회원관리 시스템 만들기 (프로젝트: MemberManager)

| 파일 | 내용 |
|---|---|
| `sql/member2.sql` | member2 테이블 |
| `src/com/member/MemberDTO.java` | 회원 DTO |
| `src/com/member/MemberDAO.java` | selectOne/updateOne/deleteOne/insertOne/isNotMember (교재에서 생략된 메서드 본문 보충) |
| `webapp/index.jsp` | 로그인 화면 |
| `webapp/register_form.jsp → register.jsp` | 회원가입 |
| `webapp/login.jsp` | 로그인 처리(세션에 id 저장) |
| `webapp/member_info.jsp` | 회원정보 보기(비로그인 시 index.jsp로 이동하도록 보충) |
| `webapp/update.jsp` | 회원정보 수정 |
| `webapp/logout.jsp` | 로그아웃 |
| `webapp/delete.jsp` | 회원탈퇴 |
