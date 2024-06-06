select x, sum(x_p)/(
	SELECT (SUM(x_p)) as max
	FROM ndfl_taxi
	group by x
	order by SUM(x_p) desc
	limit 1) 
		* 100 as Persentage
from ndfl_taxi 
group by x;

select x, sum(x_p)
from ndfl_taxi 
group by x;

select x, sum(x_p)
from ndfl_taxi 
group by x
order by SUM(x_p) desc;

select x, (avg(x_p))
from ndfl_taxi 
where time(datet) >= time('21:00:00') and time(datet) <= time('22:00:00')
group by x;

select count(*) 
from (select loc
from ndfl_taxi 
where x = 3
group by loc) as a ;
