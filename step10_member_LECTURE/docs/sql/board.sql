/* 
	SQL Script File : member_ddl.sql
	Member Sehema
*/

-- drop table
drop table member cascade constraints purge;

-- create table : 
create table member (
	member_id varchar2(30) primary key,
	member_pw varchar2(20) not null,
	name varchar2(20) not null,
	mobile varchar2(13) not null,
	email varchar2(30) not null,
	entry_date varchar2(10) not null,
	grade varchar2(1) not null,
	mileage number(6),
	manager varchar2(20)
);

-- init insert : 
insert into member(member_id, member_pw, name, mobile, email, entry_date, grade, mileage)
values('user01', 'password01', '홍길동', '010-1234-1111', 'user01@work.com', '2019.04.05', 'G', 7500);

insert into member
values('user02', 'password02', '강감찬', '010-1234-1112', 'user02@work.com', '2019.05.06', 'G', 95000, null);

insert into member
values('user03', 'password03', '이순신', '010-1234-1113', 'user03@work.com', '2019.11.07', 'G', 3000, null);

insert into member
values('user04', 'password04', '김유신', '010-1234-1114', 'user04@work.com', '2020.12.08', 'S', null, '송중기');

insert into member
values('user05', 'password05', '유관순', '010-1234-1115', 'user05@work.com', '2021.05.09', 'A', null, null);

commit;

-- login
select * from member where member_id='user01' and member_pw='password01';

-- 내정보조회/상세조회
select * from member where member_id='user01';

-- 내정보변경 : 비밀번호, 이름, 휴대폰, 이메일
update member set member_pw='aa', name='bb', mobile='cc', email='dd' where member_id='user01';

-- 전체조회
select * from member;

-- 다중조건 테스트를 위한 레코드 초기화 추가 : 다중조건을 참고로해서 데이터정보를 설정해서 추가하세요
-- multipleCondigion init insert : 
insert into member(member_id, member_pw, name, mobile, email, entry_date, grade, mileage)
values('test01', 'password01', '김길동', '010-1234-1111', 'user01@korea.com	', '2019.04.05', 'G', 7500);

insert into member
values('test02', 'password02', '박감찬', '010-1234-1112', 'test02@work.com', '2019.05.06', 'G', 99000, null);

insert into member
values('test03', 'password03', '이순돌', '010-1111-1113', 'test03@work.com', '2019.11.07', 'S', null, '박우용');

insert into member
values('test04', 'password04', '김유진', '010-1234-1234', 'test04@work.com', '2020.12.08', 'S', null, '송중기');

insert into member
values('admin', 'admin1004', '박형순', '010-2222-1111', 'test05@work.com', '2021.05.09', 'A', null, null);

commit;




-- login
select * from member where member_id='user01' and member_pw='password01';

-- 내정보조회/상세조회
select * from member where member_id='user01';

-- 내정보변경 : 비밀번호, 이름, 휴대폰, 이메일
update member set member_pw='aa', name='bb', mobile='cc', email='dd' where member_id='user01';

-- 전체조회
select * from member;

-- 아이디 검색
select * from member where member_id='user01';

-- 등급 검색
select * from member where grade ='G';

-- 마일리지
select * from member where mileage >= 100000;

-- 변경
update member set mileage=105000 where member_id='user02';

-- 담당자
select * from member where manager ='송중기';

-- 휴대폰번호 4자리 검색
select * from member where mobile like('%1111%');
select * from member where substr(mobile,-4)='1111';

-- 이메일 검색
select * from member where email ='user01@work.com';

-- 이름 검색
select * from member where name ='홍길동';

-- 아이디+이메일
select * from member where member_id='user01' or email ='user01@work.com';

-- 다중 아이디 다중조건 검색
select * from member where member_id in('user01','user02');

  
create table FREEBOARD (
	NUM number(9),
	TITLE varchar2(50) not null,
	MEMBER_ID varchar2(30) not null,
	BDATE date not null,
	VIEWS number(9),
    THUMBS number(9),
    CONTENTS varchar2(4000)
);

delete FREEBOARD;

INSERT INTO FREEBOARD
VALUES(1, '주말과제', 'user05', '2020-11-11', 0,0,'회원도서관리DB설계');

INSERT INTO FREEBOARD
VALUES(2, '형상관리','user04', '2020-12-25',	0, 0, '형상관리 소개');

INSERT INTO FREEBOARD
VALUES(3, '주말과제', 'user05', '2021-02-14', 0, 0, '화면정의서');

INSERT INTO FREEBOARD
VALUES(4, '과제제출' ,'user05', '2021-03-01', 0,0,'시간엄수');

INSERT INTO FREEBOARD
VALUES(5, 'WEB참고', 'user01', '2021-05-26', 0, 0, 'www.w3schools.com');

INSERT INTO FREEBOARD
VALUES(6, 'WEB참고1', 'user01', TO_CHAR(SYSDATE,'YYYY-MM-DD'), 0,0, 'www.w3schools.com');

-- 전체조회
select * from freeboard;
