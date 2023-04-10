-- 코드를 입력하세요
select f.FLAVOR from FIRST_HALF as f
inner join ICECREAM_INFO as i
on f.FLAVOR = i.FLAVOR
where i.INGREDIENT_TYPE = 'fruit_based'
and f.TOTAL_ORDER > 3000
order by f.TOTAL_ORDER desc;