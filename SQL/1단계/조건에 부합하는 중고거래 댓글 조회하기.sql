/*
다음은 중고거래 게시판 정보를 담은 USED_GOODS_BOARD 테이블과 중고거래 게시판 첨부파일 정보를 담은 USED_GOODS_REPLY 테이블입니다. 
USED_GOODS_BOARD 테이블은 다음과 같으며 BOARD_ID, WRITER_ID, TITLE, CONTENTS, PRICE, CREATED_DATE, STATUS, VIEWS은 게시글 ID, 
작성자 ID, 게시글 제목, 게시글 내용, 가격, 작성일, 거래상태, 조회수를 의미합니다.
*/
SELECT b.TITLE
        ,b.BOARD_ID
        ,r.REPLY_ID
        ,r.WRITER_ID
        ,r.CONTENTS
        ,cast(r.CREATED_DATE as char) "CREATED_DATE"
from USED_GOODS_BOARD b join USED_GOODS_REPLY r
on b.BOARD_ID=r.BOARD_ID 
where substr(cast(b.CREATED_DATE as char),6,2)='10'
order by r.CREATED_DATE,b.TITLE