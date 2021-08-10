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


