/*FOOD_ORDER 테이블에서 5월 1일을 기준으로 주문 ID, 제품 ID, 출고일자, 출고여부를 조회하는 SQL문을 작성해주세요. 출고여부는 5월 1일까지 출고완료로 이 후 날짜는 출고 대기로 미정이면 출고미정으로 출력해주시고, 결과는 주문 ID를 기준으로 오름차순 정렬해주세요.*/
SELECT ORDER_ID, PRODUCT_ID, to_char(OUT_DATE,'yyyy-mm-dd'),
       CASE 
           WHEN OUT_DATE <= TO_DATE('20220501', 'YYYYMMDD') THEN '출고완료'
           WHEN OUT_DATE <= SYSDATE THEN '출고대기'
           WHEN OUT_DATE is null THEN '출고미정'
       END "출고여부"
FROM FOOD_ORDER
order by ORDER_ID