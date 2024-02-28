/*상반기 아이스크림 총주문량이 3,000보다 높으면서 아이스크림의 
주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는
 SQL 문을 작성해주세요.*/
SELECT i.FLAVOR
from FIRST_HALF h join ICECREAM_INFO i
on i.FLAVOR=h.FLAVOR
where h.TOTAL_ORDER>3000 and i.INGREDIENT_TYPE='fruit_based'