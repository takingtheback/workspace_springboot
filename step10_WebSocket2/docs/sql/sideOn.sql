-- 생성된 모든 테이블 확인
select * from tab;

-- create member table
create table member (
    member_id varchar2(30) primary key,
    member_pw varchar2(20) not null,
    email varchar2(30) not null,
    grade varchar2(10) not null,
    name varchar2(20) not null,
    mobile varchar2(13) not null,
    entry_date varchar2(10) not null,
    rest_count varchar2(10) not null, -- 경고받은수
    reward varchar2(20)
);

-- member 기초 데이터 추가 
insert into member values('user01', 'password01', 'user01@gmail.com', 'G','user01','01012341111','2021-11-12','0','0');
insert into member values('user02', 'password02', 'user02@gmail.com', 'G','user02','01012342222','2021-10-20','0','0');
insert into member values('user03', 'password03', 'user03@gmail.com', 'G','user03','01012343333','2021-04-18','0','0');
insert into member values('user04', 'password04', 'user04@gmail.com', 'G','user04','01012344444','2020-05-09','0','0');
insert into member values('user05', 'password05', 'user05@gmail.com', 'G','user05','01012345555','2021-02-27','0','0');
insert into member values('user06', 'password06', 'user06@gmail.com', 'G','user06','01012346666','2020-05-22','0','0');
insert into member values('user07', 'password07', 'user07@gmail.com', 'G','user07','01012347777','2020-12-17','0','0');
insert into member values('user08', 'password08', 'user08@gmail.com', 'G','user08','01012348888','2020-09-17','0','0');
insert into member values('user09', 'password09', 'user09@gmail.com', 'G','user09','01012349999','2020-06-17','0','0');
insert into member values('1', '1', 'admin@gmail.com', 'A','admin','01012340000','2020-05-17','0','0');
insert into member values('admin1', 'admin1', 'admin1@gmail.com', 'A','admin1','01012340001','2020-05-18','0','0');

-- member 테이블 조회
select * from member;

delete member;
-----------------------------------------------------------------------------------------------

-- create rest table : notice_no -> recruit_no 변경예정... NOTICE DTO도 변경예정...
create table rest (
    rest_no varchar2(10) primary key, -- 신고 처리 번호
    notice_no varchar2(10), -- 문제 게시글 번호
    member_id varchar2(20) not null, -- 문제 게시글 작성자
    reason varchar2(100) not null, -- 신고사유
    rest_enroll varchar2(20), -- 신고 접수일자
    rest_confirm varchar2(20), -- 신고 처리일자
    rest_check varchar2(10) not null -- 기본 'F' / 처리완료시 'T'
);

-- rest 테이블 조회 
select * from rest;

-- create seq rest
create SEQUENCE SEQ_REST 
start with 1
increment by 1
;

-- REST SEQ 삭제
drop sequence SEQ_REST;

-- rest constraint 추가 (fk_notice_no) : notice_no -> recruit_no 변경예정... NOTICE DTO도 변경예정...
alter table rest
add constraint fk_notice_no foreign key(notice_no) REFERENCES notice(notice_no) ON DELETE CASCADE;
-- rest constraint 추가 (fk_rest_member_id)
alter table rest
add constraint fk_rest_member_id foreign key(member_id) REFERENCES MEMBER(member_id) ON DELETE CASCADE;

-- rest table 기초 데이터 추가 
insert into rest values(SEQ_REST.nextval, '1', 'admin1', '허위광고', '2021-08-01', null ,'F');
insert into rest values(SEQ_REST.nextval, '3', 'admin1', '신고테스트임으아아아ㅇ악', '2021-08-01', null, 'F');

-----------------------------------------------------------------------------------------------

-- create notice table
create table notice (
    notice_no varchar2(10) primary key, -- 공시글 번호
    notice_title varchar2(50) not null,
    notice_content varchar2(2000),
    member_id varchar2(20), -- 공지 작성자
    notice_date varchar2(20), -- 공지 작성일
    view_count varchar2(20), 
    visible_check varchar2(5) -- 기본 'F' / 신고당하면 'T'(숨김) 변경
);

-- notice 테이블 조회 
select * from notice order by notice_no;
select * from notice where visible_check='F' order by notice_no;

-- create seq notice
create SEQUENCE SEQ_NOTICE
start with 1
increment by 1
;

-- notice SEQ 삭제
drop SEQUENCE SEQ_NOTICE;

-- create constraint notice (fk_member_id)
alter table notice
add constraint fk_member_id foreign key(member_id) REFERENCES MEMBER(member_id) ON DELETE CASCADE;

-- notice 기초 데이터 추가
insert into notice values(SEQ_NOTICE.nextval, '오픈 이벤트', '선착순 1명 맘스터치', 'admin1', '2021-07-20','0','F');
insert into notice values(SEQ_NOTICE.nextval, '불량 이용자 경고 안내', '좋은 글만 쓰세요', 'admin1', '2021-07-22', '0','F');
insert into notice values(SEQ_NOTICE.nextval, '인스타그램 팔로우 이벤트 안내', '좋아요 팔로우 해시태그시 선물 증정', 'admin1', '2021-07-23', '0','F');
insert into notice values(SEQ_NOTICE.nextval, '초대 가입 이벤트', '친구 초대시 thx', 'admin1', '2021-07-24','0','F');

-- notice 테이블 조회 
select * from notice;


-- 게시판 추가
drop table QNABOARD;

create table QNABOARD (
	QNABOARD_NO number(9) ,
	QNABOARD_TITLE varchar2(50) not null,
	QNABOARD_CONTENTS varchar2(4000),
	MEMBER_ID varchar2(30),
    GRADE varchar2(10),
	QNABOARD_DATE varchar2(20),
	QNABOARD_VIEWS number(9)
    
);

-- 게시판 제약식
alter table QNABOARD
add constraint fk_member_id foreign key(MEMBER_ID) REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE;


-- 자동 숫자 증가
CREATE SEQUENCE SEQ_QNABOARD
start with 0
increment by 1
;

-- notice SEQ 삭제
drop SEQUENCE SEQ_QNABOARD;

-- 초기데이터
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트1', '문의합니다아~', 'user01','G', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트2', '문의합니다아~', 'user02','G', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트3', '문의합니다아~', 'user03','G', '2021-07-20',0);

select * from QnABoard;

select * from QnABoard where QNABOARD_NO='5';

commit;

