-- which circuit did each race take place all all years?
-- circuit table: circuitID, name
-- races: year, name, circuitId, date
/*
select top 5*
from formula_one.dbo.circuit
*/
/*
select *
from formula_one.dbo.races AS races
*/
select races.name AS race_name,
races.year AS race_year,
races.date AS race_date
cir.name AS circuit_name
inner join formula_one.dbo.circuits AS cir
ON races.circuitID=cir.circuitId;