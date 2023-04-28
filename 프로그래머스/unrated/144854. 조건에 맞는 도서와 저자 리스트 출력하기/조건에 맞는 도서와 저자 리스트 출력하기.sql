-- 코드를 입력하세요
SELECT BOOK_ID, AUTHOR_NAME, DATE_FORMAT(b.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
from BOOK as b
inner join AUTHOR  as a
on b.AUTHOR_ID = a.AUTHOR_ID
where b.CATEGORY = '경제'
order by PUBLISHED_DATE;
