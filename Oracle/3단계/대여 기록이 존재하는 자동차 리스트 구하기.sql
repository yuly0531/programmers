/*CAR_RENTAL_COMPANY_CAR 테이블과 CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 자동차 종류가 '세단'인 자동차들 중 10월에 대여를 시작한 기록이 있는 자동차 ID 리스트를 출력하는 SQL문을 작성해주세요. 자동차 ID 리스트는 중복이 없어야 하며, 자동차 ID를 기준으로 내림차순 정렬해주세요.*/
SELECT distinct(h.CAR_ID)
from CAR_RENTAL_COMPANY_CAR c ,CAR_RENTAL_COMPANY_RENTAL_HISTORY h
where c.CAR_ID=h.CAR_ID and c.CAR_TYPE='세단' and to_char(h.START_DATE,'yyyymm')='202210'
order by h.CAR_ID desc