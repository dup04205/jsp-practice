-- root 계정으로 실행: DB와 사용자 계정 만들기
create database my_db;
create user user@localhost identified by 'user1234';
grant all privileges on my_db.* to user@localhost with grant option;
flush privileges;

-- user 계정(mysql -uuser -p)으로 실행: 테이블과 데이터
use my_db;
CREATE TABLE member (
    id INT PRIMARY KEY,
    pass VARCHAR(20) NOT NULL,
    name VARCHAR(20) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(100)
);
insert into member values (100, 'jin100', '진숙희', '123-1234', '서울');
insert into member values (200, 'kim200', '김영철', '124-2342', '부산');
insert into member values (300, 'park300', '박순희', '232-2321', '제주');

-- 검색 / 수정 / 삭제 연습
SELECT * FROM member where id = 100;
select id, name, address from member where id = 100 or address = '부산';
update member set phone='432-1231' where id=100;
delete from member where id=200;
select * from member;
