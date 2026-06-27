with CTE AS(
    select
    id,
    recordDate ,
    temperature,
    lead(temperature,1) over(order by recordDate desc) as previous_date_temp,
    LEAD(recordDate, 1) OVER(ORDER BY recordDate DESC) AS previous_record_date
    from weather
)
select
id
-- recordDate ,
-- temperature,
-- previous_date_temp
from CTE
 where previous_date_temp < temperature
AND DATEDIFF(recordDate, previous_record_date) = 1;