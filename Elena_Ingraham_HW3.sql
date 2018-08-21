select statecode, name from states;
select name, statecode, population_1950, population_2010 from counties where name like 'prince%';
select states.population_2010 from states inner join senators on states.statecode = senators.statecode where senators.name = "Richard Lugar";
select count(*) from counties, states where states.name = 'Maryland' and counties.statecode = states.statecode;
select name from states where admitted_to_union = (select max(admitted_to_union) from states);
select name from senators where name not in (select chairman from committees) and affiliation = 'D' order by name;
