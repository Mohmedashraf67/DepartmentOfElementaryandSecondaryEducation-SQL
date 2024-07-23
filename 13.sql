select * from "districts"
join "schools" on "districts"."id"="schools"."district_id"
limit 10
