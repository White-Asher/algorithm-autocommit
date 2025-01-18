-- 코드를 입력하세요
-- 
SELECT year(SALES_DATE) as `YEAR`, month(SALES_DATE) as `MONTH`, GENDER, COUNT(DISTINCT u.USER_ID) AS `USERS`
from USER_INFO as u
join ONLINE_SALE as s
on u.USER_ID = s.USER_ID
where GENDER is not null
group by year(SALES_DATE), month(SALES_DATE), GENDER
order by year(SALES_DATE), month(SALES_DATE), GENDER;