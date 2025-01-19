-- ORACLE SQL
SELECT 
    UGU.USER_ID,
    UGU.NICKNAME,
    UGU.CITY || ' ' ||UGU.STREET_ADDRESS1 || ' ' || UGU.STREET_ADDRESS2 AS "전체주소",
    CASE WHEN LENGTH(TLNO) = 11 
         THEN SUBSTR(TLNO,0,3) || '-' 
           || SUBSTR(TLNO,4,4) || '-' 
           || SUBSTR(TLNO,8,4) 
    END AS "전화번호"
FROM USED_GOODS_USER UGU
WHERE USER_ID IN (
                    SELECT WRITER_ID 
                    FROM USED_GOODS_BOARD UGB
                    GROUP BY WRITER_ID
                    HAVING COUNT(BOARD_ID) >= 3
                  )
ORDER BY USER_ID DESC
;