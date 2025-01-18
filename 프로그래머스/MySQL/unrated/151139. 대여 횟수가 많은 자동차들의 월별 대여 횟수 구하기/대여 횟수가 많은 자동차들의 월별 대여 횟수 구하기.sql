-- 코드를 입력하세요
SELECT Month(START_DATE) as MONTH, CAR_ID, count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where START_DATE REGEXP '2022-08|2022-09|2022-10' 
and CAR_ID in (
    select CAR_ID 
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where START_DATE REGEXP '2022-08|2022-09|2022-10' 
    group by CAR_ID
    having count(*) >= 5
)
group by CAR_ID, month(START_DATE)
having RECORDS > 0
order by MONTH, CAR_ID desc;