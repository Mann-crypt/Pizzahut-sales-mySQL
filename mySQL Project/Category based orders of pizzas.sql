

use pizzahut;

-- total quantity of each pizza category ordered

select pizza_types.category, sum(orders_details.quantity) as quantities
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on pizzas.pizza_id = orders_details.pizza_id
group by pizza_types.category order by quantities desc limit 5;