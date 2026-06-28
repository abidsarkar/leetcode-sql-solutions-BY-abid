
select
    t.request_at  AS day,
    round(SUM(IF(t.status!='completed',1,0))/count(*),2) AS `Cancellation Rate`
from Trips t
JOIN Users c ON t.client_id = c.users_id AND c.banned = 'No'
JOIN Users d ON t.driver_id = d.users_id AND d.banned = 'No'
WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.request_at;