-- determine the distribution of orders by hour of day.

select hour(order_time) as hour, count(order_id) as order_count from orders
group by hour(order_time) order by hour;