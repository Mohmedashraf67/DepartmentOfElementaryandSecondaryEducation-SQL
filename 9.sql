-- select "name","district_id" from "schools" limit 10
-- select "name","id" from "districts"where "id" in (select "district_id" from "schools");

-- select "name" from "expenditures" where "district_id" in
-- (select "id" from "districts"where "id" in (select "district_id" from "schools"))
-- order by "pupils" asc
-- limit 1

select "name" from "districts"
join "expenditures" on "expenditures"."district_id"="districts"."id"
order by "pupils" asc
limit 1

