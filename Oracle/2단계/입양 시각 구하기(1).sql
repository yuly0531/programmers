/*보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.*/
SELECT to_number(to_char(DATETIME,'hh24')) "HOUR"
        ,count(*) "count"
            
from ANIMAL_OUTS 
where to_number(to_char(DATETIME,'hh24')) BETWEEN 9 AND 19
group by to_number(to_char(DATETIME,'hh24'))

order by to_number(to_char(DATETIME,'hh24'))