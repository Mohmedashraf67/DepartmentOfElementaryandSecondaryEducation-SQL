select "city",count("name") from "schools"
 where "type"="Public School"
group by "city"
order by count("name") desc, "city" 
limit 10;
