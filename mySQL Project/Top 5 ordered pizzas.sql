-- top 5 most ordered pizzas ordered along with thier quantities

select pizza_types.name, sum(orders_details.quantity) as quantities
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on pizzas.pizza_id = orders_details.pizza_id
group by pizza_types.name order by quantities desc limit 5;
