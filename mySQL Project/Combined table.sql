select * from orders join orders_details
on orders.order_id = orders_details.order_id
join pizzas on pizzas.pizza_id = orders_details.pizza_id
join pizza_types on pizzas.pizza_type_id = pizza_types.pizza_type_id;