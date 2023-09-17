SELECT 
    HISTORY_ID, 
    CAR_ID, 
    DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE, 
    DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE,
    IF (TIMESTAMPDIFF(DAY, START_DATE, END_DATE) >= 29 , "장기 대여", "단기 대여") AS RENT_TYPE
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 
    DATE_FORMAT(START_DATE, '%Y-%m') = '2022-09'
ORDER BY 
    HISTORY_ID DESC; 
    
/*
DATEDIFF( [date1], [date2] ) --> date1에서 date2을 뺀 날짜를 리턴한다.
주의할 점은 1월 30일에서 1월 1일을 뺐을 때 그 값이 29가 나오므로 30일 이상 렌트한 기록을 조회하려면 
DATEDIFF의 값이 29보다 크거나 같은 것을 선택해야 한다. 
*/