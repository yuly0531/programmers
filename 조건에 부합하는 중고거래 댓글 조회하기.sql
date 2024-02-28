/*
다음은 중고거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 중고거래 게시판 첨부파일 정보를 담은 USED_GOODS_REPLY 테이블입니다. USED_GOODS_BOARD 테이블은 다음과 같으며 BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS은 게시글 ID, 작성자 ID, 게시글 제목, 게시글 내용, 가격, 작성일, 거래상태, 조회수를 의미합니다.
*/
select b.TITLE
,b.BOARD_ID
,r.REPLY_ID
,r.WRITER_ID
,r.CONTENTS
,to_char(r.CREATED_DATE,'yyyy-mm-dd') "CREATED_DATE"
from USED_GOODS_BOARD b,USED_GOODS_REPLY r
where b.BOARD_ID=r.BOARD_ID and to_char(r.CREATED_DATE,'mm')='10'
order by r.CREATED_DATE,b.TITLE