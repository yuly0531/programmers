/*아이템의 희귀도가 'RARE'인 아이템들의 모든 다음 업그레이드 아이템의 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME), 아이템의 희귀도(RARITY)를 출력하는 SQL 문을 작성해 주세요. 이때 결과는 아이템 ID를 기준으로 내림차순 정렬주세요.*/

select a.ITEM_ID,a.ITEM_NAME,a.RARITY
from (ITEM_INFO a join ITEM_TREE b
on a.ITEM_ID = b.ITEM_ID) join ITEM_INFO c on c.ITEM_ID = b.PARENT_ITEM_ID
where  c.RARITY = 'RARE'
order by a.ITEM_ID desc