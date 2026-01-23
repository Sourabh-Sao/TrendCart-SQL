select name as product_name
from products
where name REGEXP '[0-9]'
