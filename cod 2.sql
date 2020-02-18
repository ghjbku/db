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
SELECT   hr.countries.country_name as "names",country_id  IDs FROM HR.countries;

--listázza ki az országok régiókódjait a HR.countries tábálból
select hr.countries.region_id as "régió-kód" from HR.countries GROUP BY region_id;-- order by region_id;
select DISTINCT hr.countries.region_id as "régió-kód" from HR.countries;
select unique hr.countries.region_id as "régió-kód" from HR.countries;

--listázza ki a dolgozók vezetéknevét és keresztnevét az employees táblából
SELECT
    hr.employees.last_name,first_name
FROM HR.employees;

--listázzuk ki a hr employees táblában szereplõ adatok alapján a dolgozók teljes nevét
SELECT
    last_name|| ' ' ||first_name as "teljes név" 
FROM HR.employees;
