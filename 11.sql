-- select "name" ,"graduated" from "schools"
-- join "graduation_rates" on "schools"."id"="graduation_rates"."school_id"
-- join "expenditures" on "schools"."district_id"="expenditures"."district_id"

-- select "per_pupil_expenditure" from "schools"  limit 10

select "schools"."name","per_pupil_expenditure","graduated" from "districts"
join "expenditures" on "expenditures"."district_id"="districts"."id"
join "schools" on "schools"."district_id"="districts"."id"
join "graduation_rates" on "schools"."id"="graduation_rates"."school_id"
order by "per_pupil_expenditure" desc, "schools"."name"
-- limit 10
