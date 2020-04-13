-- CONSULT A:
-- List the data of the clients subscribed to the Premium plan with a
-- the subscription date '2009-1-6'

SELECT
  client.*
FROM
  client
WHERE
  'Premium' = client.type_subscription
  AND '2009-1-6' = client.date_subscription
