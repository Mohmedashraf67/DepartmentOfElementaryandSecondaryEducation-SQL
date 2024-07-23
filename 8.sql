select "name" ,"pupils" from "districts"  join "expenditures" on "districts"."id"="expenditures"."district_id"
-- select "pupils" from "expenditures" where "district_id" IN (select "id" from "districts")

