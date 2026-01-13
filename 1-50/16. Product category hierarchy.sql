--* Question 16: Show the full hierarchy of product categories from the top-down. List every category's name, its ID, and its level, starting 
-- with the main parents and including all their sub-categories.


with RECURSIVE cte as (

    select category_id,name,parent_category_id,level
    from categories
    where parent_category_id is NULL

    UNION all

    select categories.category_id,categories.name,categories.parent_category_id
    ,categories.level
    from cte
    join categories
    on categories.parent_category_id=cte.category_id
    
)select *
from cte;
