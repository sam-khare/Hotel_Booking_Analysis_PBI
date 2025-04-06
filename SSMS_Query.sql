WITH hotels
AS
(
select * FROM dbo.[2018]
UNION
select * FROM dbo.[2019]
UNION
select * FROM dbo.[2020]
)


Select * from hotels ho
LEFT JOIN market_segments ms on ho.market_segment = ms.market_segment 
LEFT JOIN meal_cost mc on ho.meal = mc.meal

/*
1). Is our Hotel revenue growing by year?

2). Should we increase our parking lot size?

3). What trends can we see in the data?

*/

/*EDA*/
/*
SELECT arrival_date_year, 
hotel,
ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr),2) as revenue 
from hotels
GROUP BY arrival_date_year,hotel
*/
