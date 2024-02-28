SELECT HISTORY_ID
,CAR_ID
,DATE_FORMAT(START_DATE,'%Y-%m-%d')"START_DATE"
,DATE_FORMAT(END_DATE,'%Y-%m-%d')"END_DATE"
    ,case
    when DATEDIFF(END_DATE,START_DATE)+1>=30 then '장기 대여'
    else '단기 대여'
    end "RENT_TYPE"
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
where DATE_FORMAT(START_DATE,'%Y%m')='202209'
order by HISTORY_ID desc
/*
CAR_RENTAL_COMPANY_RENTAL_HISTORY 테이블에서 대여 시작일이 2022년 9월에 속하는 대여 기록에 
대해서 대여 기간이 30일 이상이면 '장기 대여' 그렇지 않으면 '단기 대여' 로 표시하는 컬럼
(컬럼명: RENT_TYPE)을 추가하여 대여기록을 출력하는 SQL문을 작성해주세요. 
결과는 대여 기록 ID를 기준으로 내림차순 정렬해주세요.
*/