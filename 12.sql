select "districts"."name","per_pupil_expenditure","staff_evaluations"."exemplary"  from "districts"
join "staff_evaluations" on "staff_evaluations"."district_id"="districts"."id"
join "expenditures" on "expenditures"."district_id"="districts"."id"
where "districts"."type" ="Public School District" and
"per_pupil_expenditure" > (
    SELECT AVG("per_pupil_expenditure")
    FROM "expenditures") and
"staff_evaluations"."exemplary" > (
    SELECT AVG("exemplary")
    FROM "staff_evaluations")
    order by "exemplary" desc,"per_pupil_expenditure" desc

