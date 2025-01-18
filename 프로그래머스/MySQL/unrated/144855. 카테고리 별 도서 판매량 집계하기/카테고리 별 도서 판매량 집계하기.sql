-- 코드를 입력하세요
SELECT b.CATEGORY, sum(bs.SALES) as TOTAL_SALES 
from BOOK as b
inner join BOOK_SALES as bs
ON b.BOOK_ID = bs.BOOK_ID
where DATE_FORMAT(bs.SALES_DATE, '%Y-%m') like '2022-01%'
group by b.CATEGORY
order by b.CATEGORY;