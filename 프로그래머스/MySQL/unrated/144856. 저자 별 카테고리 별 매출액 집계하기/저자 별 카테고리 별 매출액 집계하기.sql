-- 코드를 입력하세요
SELECT a.AUTHOR_ID, a.AUTHOR_NAME, CATEGORY, sum((SALES*PRICE)) AS TOTAL_SALES
from BOOK as b
join AUTHOR as a
on a.AUTHOR_ID = b.AUTHOR_ID
join BOOK_SALES as s
on b.BOOK_ID = s.BOOK_ID
where sales_date like '2022-01%'
group by CATEGORY, AUTHOR_ID
order by a.AUTHOR_ID, CATEGORY DESC