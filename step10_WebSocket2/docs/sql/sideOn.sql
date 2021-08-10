-- ������ ��� ���̺� Ȯ��
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
    rest_count varchar2(10) not null, -- ��������
    reward varchar2(20)
);

-- member ���� ������ �߰� 
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

-- member ���̺� ��ȸ
select * from member;

delete member;
-----------------------------------------------------------------------------------------------

-- create rest table : notice_no -> recruit_no ���濹��... NOTICE DTO�� ���濹��...
create table rest (
    rest_no varchar2(10) primary key, -- �Ű� ó�� ��ȣ
    notice_no varchar2(10), -- ���� �Խñ� ��ȣ
    member_id varchar2(20) not null, -- ���� �Խñ� �ۼ���
    reason varchar2(100) not null, -- �Ű����
    rest_enroll varchar2(20), -- �Ű� ��������
    rest_confirm varchar2(20), -- �Ű� ó������
    rest_check varchar2(10) not null -- �⺻ 'F' / ó���Ϸ�� 'T'
);

-- rest ���̺� ��ȸ 
select * from rest;

-- create seq rest
create SEQUENCE SEQ_REST 
start with 1
increment by 1
;

-- REST SEQ ����
drop sequence SEQ_REST;

-- rest constraint �߰� (fk_notice_no) : notice_no -> recruit_no ���濹��... NOTICE DTO�� ���濹��...
alter table rest
add constraint fk_notice_no foreign key(notice_no) REFERENCES notice(notice_no) ON DELETE CASCADE;
-- rest constraint �߰� (fk_rest_member_id)
alter table rest
add constraint fk_rest_member_id foreign key(member_id) REFERENCES MEMBER(member_id) ON DELETE CASCADE;

-- rest table ���� ������ �߰� 
insert into rest values(SEQ_REST.nextval, '1', 'admin1', '��������', '2021-08-01', null ,'F');
insert into rest values(SEQ_REST.nextval, '3', 'admin1', '�Ű��׽�Ʈ�����ƾƾƤ���', '2021-08-01', null, 'F');

-----------------------------------------------------------------------------------------------

-- create notice table
create table notice (
    notice_no varchar2(10) primary key, -- ���ñ� ��ȣ
    notice_title varchar2(50) not null,
    notice_content varchar2(2000),
    member_id varchar2(20), -- ���� �ۼ���
    notice_date varchar2(20), -- ���� �ۼ���
    view_count varchar2(20), 
    visible_check varchar2(5) -- �⺻ 'F' / �Ű���ϸ� 'T'(����) ����
);

-- notice ���̺� ��ȸ 
select * from notice order by notice_no;
select * from notice where visible_check='F' order by notice_no;

-- create seq notice
create SEQUENCE SEQ_NOTICE
start with 1
increment by 1
;

-- notice SEQ ����
drop SEQUENCE SEQ_NOTICE;

-- create constraint notice (fk_member_id)
alter table notice
add constraint fk_member_id foreign key(member_id) REFERENCES MEMBER(member_id) ON DELETE CASCADE;

-- notice ���� ������ �߰�
insert into notice values(SEQ_NOTICE.nextval, '���� �̺�Ʈ', '������ 1�� ������ġ', 'admin1', '2021-07-20','0','F');
insert into notice values(SEQ_NOTICE.nextval, '�ҷ� �̿��� ��� �ȳ�', '���� �۸� ������', 'admin1', '2021-07-22', '0','F');
insert into notice values(SEQ_NOTICE.nextval, '�ν�Ÿ�׷� �ȷο� �̺�Ʈ �ȳ�', '���ƿ� �ȷο� �ؽ��±׽� ���� ����', 'admin1', '2021-07-23', '0','F');
insert into notice values(SEQ_NOTICE.nextval, '�ʴ� ���� �̺�Ʈ', 'ģ�� �ʴ�� thx', 'admin1', '2021-07-24','0','F');

-- notice ���̺� ��ȸ 
select * from notice;


-- �Խ��� �߰�
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

-- �Խ��� �����
alter table QNABOARD
add constraint fk_member_id foreign key(MEMBER_ID) REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE;


-- �ڵ� ���� ����
CREATE SEQUENCE SEQ_QNABOARD
start with 0
increment by 1
;

-- notice SEQ ����
drop SEQUENCE SEQ_QNABOARD;

-- �ʱⵥ����
insert into QNABOARD values(SEQ_QNABOARD.nextval, '�����׽�Ʈ1', '�����մϴپ�~', 'user01','G', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '�����׽�Ʈ2', '�����մϴپ�~', 'user02','G', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '�����׽�Ʈ3', '�����մϴپ�~', 'user03','G', '2021-07-20',0);

select * from QnABoard;

select * from QnABoard where QNABOARD_NO='5';

commit;

