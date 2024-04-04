/*XX회사에서 게시글에 좋아요 기능을 추가함
new_posts 테이블은 좋아요 기능이 추가된 정보를 담고있음.
좋아요 기능이 없는 기존 테이블 Old_posts와 새로운 테이블 new_posts를 합쳐
하나의 테이블로 조회하는 SQL문 작성하기
기존테이블의 id와 좋아요 기능이 추가된 테이블의 id가 중복되진 않는다.

조건
테이블에는 ID, 작성자, 좋아요 수 정보가 포함이 되어야함.
좋아요 수가 없는 old_posts 의 게시글은 좋아요수를 0으로 표시
결과는 id를 기준으로 내림차순 정렬
*/
SELECT id,creator,likes
from new_posts 
union select id,creator,0
from old_posts
order by id DESC