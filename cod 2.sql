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

--listázzuk ki a hr employees táblában szereplő adatok alapján a dolgozók teljes nevét
SELECT
    last_name|| ' ' ||first_name as "teljes név" 
FROM HR.employees;

select CONCAT(CONCAT(last_name,' '), first_name) as full_name from HR.employees;

--listázzuk ki azokata az országneveket,amelyeknek 1 es a régiókódja
select hr.countries.country_name as "Ország"/*,region_id*/ from hr.countries where region_id=1; 


--listázzuk ki azokata az országneveket,amelyeknek nem 1 es a régiókódja
select hr.countries.country_name as "Ország"/*,region_id*/ from hr.countries where region_id!=1;  
select hr.countries.country_name as "Ország"/*,region_id*/ from hr.countries where not(region_id=1); 


--1es vagy 3mas
select hr.countries.country_name as "Ország"/*,region_id*/ from hr.countries where region_id=1 or region_id=3;
select hr.countries.country_name,region_id as "Ország"/*,region_id*/ from hr.countries where region_id=1 union 
select hr.countries.country_name,region_id as "Ország"/*,region_id*/ from hr.countries where region_id=3; 
select hr.countries.country_name,region_id as "Ország"/*,region_id*/ from hr.countries where region_id in (1,3); 
select hr.countries.country_name,region_id as "Ország"/*,region_id*/ from hr.countries where region_id = any (1,3); 

--listázza ki azoknak a dolgozóknak az összes adatát, akik az 50es osztályon dolgoznak és a fiztesékük legalább 5000!
select hr.employees.* from hr.employees where department_id=50 and salary>=5000;
select hr.employees.* from hr.employees where department_id=50
intersect
select hr.employees.* from hr.employees where salary>=5000;
select * from (select * from hr.employees where department_id=50) where salary>=5000;
with tpm as (select * from hr.employees where department_id=50)  select * from tpm where salary>=5000;
select * from (select * from hr.employees where department_id=50) tmp where tmp.salary>=5000;

--listázza ki azoknak a odlgozóknak az adatait, akik legalább 4000et, de max 7000-et keresnek!
select hr.employees.* from hr.employees where salary>=4000 and salary<=7000;
select unique hr.employees.* from hr.employees where (salary between 4000 and 7000);

--nem 4k és 7k között
select unique hr.employees.* from hr.employees where (salary not between 4000 and 7000);

--peter keresztnevű dolgozók összes adata
select hr.employees.* from hr.employees where first_name='Peter';
select hr.employees.* from hr.employees where first_name like 'Peter';

--nem péter
select hr.employees.* from hr.employees where first_name not like 'Peter';

--listázza azoknak a dolgozoknak a kerszt és vezetéknevét, és fizetését, akiknek P betűvel kezdődik a kersztnevük
select hr.employees.first_name,last_name,hr.employees.salary from hr.employees where first_name like 'P%';

--listázza -"- akiknek keresztneve 4 betűből áll
select hr.employees.first_name,last_name,hr.employees.salary from hr.employees where first_name like '____';
select hr.employees.first_name,last_name,hr.employees.salary from hr.employees where length(first_name) =4;

--escape sequence cucc
select hr.employees.first_name,last_name,hr.employees.salary from hr.employees where length(first_name) =4 and first_name like '%\%%' escape '\';

--az országok összes adatát, ha a neve pontosan 2 darab a betűt tartalmaz
select hr.countries.* from hr.countries where (country_name like '%a%a%' and country_name not like '%a%a%a%');
--pontosan 2 db Avagy a betű
select hr.countries.* from hr.countries where (lower(country_name) like '%a%a%' and lower(country_name) not like '%a%a%a%');

--dolgozók kereszt,vezetéknevét. fizetésüket fizetésük szerint csökkemő
select hr.employees.first_name, hr.employees.last_name, hr.employees.salary from  hr.employees order by salary desc;

/*dolgozók kereszt,vezetéknevét. fizetésüket fizetésük szerint csökkemő, ha több dolgozónak is azonos a fizetése,
akkor őket vezeték nevűk szerinti abc rendben sorolja fel.
*/
select hr.employees.first_name, hr.employees.last_name, hr.employees.salary from  hr.employees order by salary desc,first_name asc;

--listázza ki azoknak a dolgozóknak a kereszt és vezetéknevét, akiknek nincs főnökük
select hr.employees.first_name,hr.employees.last_name from hr.employees where hr.employees.manager_id is null;

--comission pct nem null, és csökkenő sorrendben legyen a com_pct
select hr.employees.first_name,hr.employees.last_name,commission_pct from hr.employees where hr.employees.commission_pct is not null order by commission_pct desc;

