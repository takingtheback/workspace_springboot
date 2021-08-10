-- 문의게시판 삭제
drop table QNABOARD;

-- 문의게시판 추가
create table QNABOARD (
	QNABOARD_NO number(9) ,
	QNABOARD_TITLE varchar2(50) not null,
	QNABOARD_CONTENTS varchar2(4000),
	MEMBER_ID varchar2(30),
	QNABOARD_DATE varchar2(20),
	QNABOARD_VIEWS number(9)
    
);

-- 게시판 제약식
alter table QNABOARD
add constraint fk_member_id foreign key(MEMBER_ID) REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE;


-- 자동 숫자 증가
CREATE SEQUENCE SEQ_QNABOARD
start with 1
increment by 1
;

-- notice SEQ 삭제
drop SEQUENCE SEQ_QNABOARD;

-- 초기데이터
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트1', '문의합니다문의합니다문의합니다', 'user01', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트2', '문의합니다문의합니다문의합니다문의합니다', 'user02', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트3', '문의합니다문의합니다문의합니다', 'user03', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트4', '문의합니다문의합니다문의합니다', 'user01', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트5', '문의합니다문의합니다문의합니다문의합니다', 'user02', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트6', '문의합니다문의합니다문의합니다', 'user03', '2021-07-21',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트7', '문의합니다문의합니다문의합니다', 'user01', '2021-07-21',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트8', '문의합니다문의합니다문의합니다문의합니다', 'user02', '2021-07-22',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트9', '문의합니다문의합니다문의합니다', 'user03', '2021-07-23',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트10', '문의합니다문의합니다문의합니다', 'user01', '2021-07-24',0);insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트1', '문의합니다문의합니다문의합니다', 'user01', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트12', '문의합니다문의합니다문의합니다문의합니다', 'user02', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트13', '문의합니다문의합니다문의합니다', 'user03', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트14', '문의합니다문의합니다문의합니다', 'user01', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트15', '문의합니다문의합니다문의합니다문의합니다', 'user02', '2021-07-20',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트16', '문의합니다문의합니다문의합니다', 'user03', '2021-07-21',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트17', '문의합니다문의합니다문의합니다', 'user01', '2021-07-21',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트18', '문의합니다문의합니다문의합니다문의합니다', 'user02', '2021-07-22',0);
insert into QNABOARD values(SEQ_QNABOARD.nextval, '문의테스트19', '문의합니다문의합니다문의합니다', 'user03', '2021-07-23',0);

-- 문의게시판 전체 조회
select * from QnABoard;

-- 문의게시판 상세 조회
select * from QnABoard where QNABOARD_NO='1';

-- 문의게시판 커밋
commit;

-- 게시물 총 갯수
select count(*) from QNABOARD;
 
 -- 게시판 페이징 Rownum 사용
select rn,QNABOARD_NO, QNABOARD_TITLE,	QNABOARD_CONTENTS, MEMBER_ID, QNABOARD_DATE, QNABOARD_VIEWS from(
select /*+INDEX_DESC(vam_board pk_board) */ rownum as rn,QNABOARD_NO, QNABOARD_TITLE,	QNABOARD_CONTENTS, MEMBER_ID, QNABOARD_DATE, QNABOARD_VIEWS
from QnABoard)
where rn between 1 and 10;

-- 게시판 페이징     
select rn,QNABOARD_NO, QNABOARD_TITLE,	QNABOARD_CONTENTS, MEMBER_ID, QNABOARD_DATE, QNABOARD_VIEWS from (
		select /*+INDEX_DESC(QnABoard pk_board) */ rownum as rn,QNABOARD_NO, QNABOARD_TITLE, QNABOARD_CONTENTS, MEMBER_ID, QNABOARD_DATE, QNABOARD_VIEWS
		from QnABoard where rownum <= 1 * 2) 
		where rn > (1 -1) * 2;
        
-- 문의게시글 수정
UPDATE QNABOARD
SET
QNABOARD_TITLE = '수정된 제목', 
QNABOARD_CONTENTS = '수정된 내용',
QNABOARD_DATE ='2021-08-09'
WHERE
QNABOARD_NO = 1;

-- 문의게시글 삭제
delete QNABOARD
WHERE
QNABOARD_NO = 1;

-- 문의게시글 조건검색
select rn,QNABOARD_NO, QNABOARD_TITLE,	QNABOARD_CONTENTS, MEMBER_ID, QNABOARD_DATE, QNABOARD_VIEWS from (
select /*+INDEX_DESC(QnABoard pk_board) */ rownum as rn,QNABOARD_NO, QNABOARD_TITLE, QNABOARD_CONTENTS, MEMBER_ID, QNABOARD_DATE, QNABOARD_VIEWS
from QnABoard where rownum <= 10
and QNABOARD_TITLE like'%문의%')
where rn > (1-1) * 10;

-- 조회수 증가
UPDATE 
    QNABOARD
SET
    QNABOARD_VIEWS = QNABOARD_VIEWS + 1
WHERE
    QNABOARD_NO = 8;