/*REST_INFO 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성해주세요. 이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.*/
select r.FOOD_TYPE,r.REST_ID,r.REST_NAME,r.FAVORITES
from REST_INFO r , (
SELECT FOOD_TYPE,max(FAVORITES)"FAVORITES"
from REST_INFO 
group by FOOD_TYPE) xx
where r.FOOD_TYPE=xx.FOOD_TYPE and r.FAVORITES=xx.FAVORITES
order by r.FOOD_TYPE desc