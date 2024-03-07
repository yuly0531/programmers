/*이 서비스에서는 공간을 둘 이상 등록한 사람을 "헤비 유저"라고 부릅니다. 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문을 작성해주세요.*/
select p.ID,p.NAME,p.HOST_ID
from PLACES p join (
SELECT ID,NAME,HOST_ID
from PLACES 
group by HOST_ID
having count(HOST_ID)>=2 )xx
on p.HOST_ID=xx.HOST_ID
where xx.HOST_ID
order by p.ID