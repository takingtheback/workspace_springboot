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
values('user01', 'password01', 'ȫ�浿', '010-1234-1111', 'user01@work.com', '2019.04.05', 'G', 7500);

insert into member
values('user02', 'password02', '������', '010-1234-1112', 'user02@work.com', '2019.05.06', 'G', 95000, null);

insert into member
values('user03', 'password03', '�̼���', '010-1234-1113', 'user03@work.com', '2019.11.07', 'G', 3000, null);

insert into member
values('user04', 'password04', '������', '010-1234-1114', 'user04@work.com', '2020.12.08', 'S', null, '���߱�');

insert into member
values('user05', 'password05', '������', '010-1234-1115', 'user05@work.com', '2021.05.09', 'A', null, null);

commit;

-- login
select * from member where member_id='user01' and member_pw='password01';

-- ��������ȸ/����ȸ
select * from member where member_id='user01';

-- ���������� : ��й�ȣ, �̸�, �޴���, �̸���
update member set member_pw='aa', name='bb', mobile='cc', email='dd' where member_id='user01';

-- ��ü��ȸ
select * from member;

delete from member where member_Id='test01';

-- �������� �׽�Ʈ�� ���� ���ڵ� �ʱ�ȭ �߰� : ���������� ������ؼ� ������������ �����ؼ� �߰��ϼ���
-- multipleCondigion init insert : 
insert into member(member_id, member_pw, name, mobile, email, entry_date, grade, mileage)
values('test01', 'password01', '��浿', '010-1234-1111', 'user01@korea.com	', '2019.04.05', 'G', 7500);

insert into member
values('test02', 'password02', '�ڰ���', '010-1234-1112', 'test02@work.com', '2019.05.06', 'G', 99000, null);

insert into member
values('test03', 'password03', '�̼���', '010-1111-1113', 'test03@work.com', '2019.11.07', 'S', null, '�ڿ��');

insert into member
values('test04', 'password04', '������', '010-1234-1234', 'test04@work.com', '2020.12.08', 'S', null, '���߱�');

insert into member
values('admin', 'admin1004', '������', '010-2222-1111', 'test05@work.com', '2021.05.09', 'A', null, null);

commit;




-- login
select * from member where member_id='user01' and member_pw='password01';

-- ��������ȸ/����ȸ
select * from member where member_id='user01';

-- ���������� : ��й�ȣ, �̸�, �޴���, �̸���
update member set member_pw='aa', name='bb', mobile='cc', email='dd' where member_id='user01';

-- ��ü��ȸ
select * from member;

-- ���̵� �˻�
select * from member where member_id='user01';

-- ��� �˻�
select * from member where grade ='G';

-- ���ϸ���
select * from member where mileage >= 100000;

-- ����
update member set mileage=105000 where member_id='user02';

-- �����
select * from member where manager ='���߱�';

-- �޴�����ȣ 4�ڸ� �˻�
select * from member where mobile like('%1111%');
select * from member where substr(mobile,-4)='1111';

-- �̸��� �˻�
select * from member where email ='user01@work.com';

-- �̸� �˻�
select * from member where name ='ȫ�浿';

-- ���̵�+�̸���
select * from member where member_id='user01' or email ='user01@work.com';

-- ���� ���̵� �������� �˻�
select * from member where member_id in('user01','user02');

 
 -- drop table
drop table FREEBOARD cascade constraints purge;
  
create table FREEBOARD (
	TITLE varchar2(50) not null,
	MEMBER_ID varchar2(30) not null,
	BDATE date not null,
	VIEWS number(9),
    THUMBS number(9),
    CONTENTS varchar2(4000)
);

delete FREEBOARD;

INSERT INTO FREEBOARD
VALUES('�ָ�����', 'user05', '2020-11-11', 0,0,'ȸ����������DB����');

INSERT INTO FREEBOARD
VALUES('�������','user04', '2020-12-25',	0, 0, '������� �Ұ�');

INSERT INTO FREEBOARD
VALUES('�ָ�����', 'user05', '2021-02-14', 0, 0, 'ȭ�����Ǽ�');

INSERT INTO FREEBOARD
VALUES('��������' ,'user05', '2021-03-01', 0,0,'�ð�����');

INSERT INTO FREEBOARD
VALUES('WEB����', 'user01', '2021-05-26', 0, 0, 'www.w3schools.com');

INSERT INTO FREEBOARD
VALUES('WEB����1', 'user01', TO_CHAR(SYSDATE,'YYYY-MM-DD'), 0,0, 'www.w3schools.com');


-- ��ü��ȸ
select * from freeboard;

select num from freeboard order by num desc;