/*2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 카테고리명을 기준으로 오름차순 정렬해주세요.*/
SELECT b.CATEGORY,sum(s.SALES)
from BOOK b,BOOK_SALES s
where b.BOOK_ID=s.BOOK_ID 
and to_char(s.SALES_DATE,'yyyy-mm')='2022-01'
group by b.CATEGORY
order by b.CATEGORY