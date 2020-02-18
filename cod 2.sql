--listázza ki a hr.countries tábla adatait
SELECT * FROM HR.countries;
/*asd
asd*/
--listázza ki a hr.departments tábla adatait
SELECT hr.departments.* FROM HR.departments;

--listázza ki a hr.employees tábla adatait
SELECT hr.employees.* FROM HR.employees;

--listázza ki az országok neveit a hr.countries táblából
SELECT   hr.countries.country_name as "asd" FROM HR.countries;

--listázza ki 
select 1+1 from dual;
--listázza ki()[]{}<>
--listázza ki az országok neveit és kódjaikat a hr.countries táblából
SELECT   hr.countries.country_name as "names",country_id as "IDs" FROM HR.countries;
--listázza ki

--listázza ki
