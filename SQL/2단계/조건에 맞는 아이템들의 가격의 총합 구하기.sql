/*
ITEM_INFO 테이블에서 희귀도가 'LEGEND'인 아이템들의 가격의 총합을 구하는 SQL문을 작성해 주세요. 이때 컬럼명은 'TOTAL_PRICE'로 지정해 주세요.
*/
select sum(PRICE) "TOTAL_PRICE"
from ITEM_INFO 
where RARITY = ('LEGEND')