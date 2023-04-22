-- 코드를 입력하세요
SELECT hour(DATETIME) AS `HOUR`, count(*) as `COUNT`
from ANIMAL_OUTS
where hour(DATETIME) between 9 and 19
group by hour(DATETIME)
order by hour(DATETIME);