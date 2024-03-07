/*아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 시작일 순으로 조회해야 합니다.*/
SELECT i.NAME,i.DATETIME
from ANIMAL_INS i left join ANIMAL_OUTS o
on i.ANIMAL_ID=o.ANIMAL_ID
where o.ANIMAL_ID is null
order by i.DATETIME
limit 3