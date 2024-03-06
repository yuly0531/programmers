/*USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 완료된 중고 거래의 총금액이 70만 원 이상인 사람의 회원 ID, 닉네임, 총거래금액을 조회하는 SQL문을 작성해주세요. 결과는 총거래금액을 기준으로 오름차순 정렬해주세요.*/
SELECT u.USER_ID,u.NICKNAME,sum(b.PRICE)
from USED_GOODS_BOARD b , USED_GOODS_USER u
where b.WRITER_ID=u.USER_ID and b.STATUS='DONE'
group by u.USER_ID,u.NICKNAME
having sum(b.PRICE)>=700000
order by sum(b.PRICE)