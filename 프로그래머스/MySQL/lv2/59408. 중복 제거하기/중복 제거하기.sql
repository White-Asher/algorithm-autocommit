-- 코드를 입력하세요

-- DISTINCT
# SELECT count(distinct NAME) as count
# from ANIMAL_INS
# where NAME != 'NULL';

-- GROUP BY
select count(a.name)
from (SELECT name
from ANIMAL_INS
group by name) a