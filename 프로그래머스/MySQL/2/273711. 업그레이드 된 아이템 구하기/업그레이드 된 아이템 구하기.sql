SELECT 
    II.ITEM_ID, II.ITEM_NAME, II.RARITY 
FROM 
    ITEM_INFO AS II,
    ITEM_TREE AS IT
WHERE 
    II.ITEM_ID = IT.ITEM_ID
    AND IT.PARENT_ITEM_ID IN (
        SELECT 
            ITEM_ID 
        FROM 
            ITEM_INFO 
        WHERE 
            RARITY='RARE'
        )
ORDER BY
    ITEM_ID DESC