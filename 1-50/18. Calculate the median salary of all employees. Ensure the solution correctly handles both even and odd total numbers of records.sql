-- Median is the middle value in a data set when the numbers are arranged in ascending or descending order.
-- For an odd number of data points, the median is the middle number.Example: In the set [1, 3, 5, 7, 9], the median is 5. 
-- For an even number of data points, the median is the average of the two middle numbers.


--? for odd no. of records in table
with cte as (
select salary,
ROW_NUMBER() OVER(order by salary) sal_asc,
ROW_NUMBER() OVER(order by salary desc) sal_desc
from employees
)select AVG(salary)
from cte
where sal_asc=sal_desc;

--? for even no. of records 
with cte as (
select salary,
ROW_NUMBER() OVER(order by salary) sal_asc,
ROW_NUMBER() OVER(order by salary desc) sal_desc
from employees
)select AVG(salary)
from cte
where sal_asc in (sal_desc,sal_desc+1,sal_desc-1);
