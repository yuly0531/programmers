/*'경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 출판일을 기준으로 오름차순 정렬해주세요.*/
SELECT b.BOOK_ID,a.AUTHOR_NAME,DATE_FORMAT(b.PUBLISHED_DATE,'%Y-%m-%d')
from BOOK b join AUTHOR a
on b.AUTHOR_ID=a.AUTHOR_ID
where CATEGORY='경제'
order by PUBLISHED_DATE