--list�zza ki a hr.countries t�bla adatait
SELECT * FROM HR.countries;
/*asd
asd*/
--list�zza ki a hr.departments t�bla adatait
SELECT hr.departments.* FROM HR.departments;

--list�zza ki a hr.employees t�bla adatait
SELECT hr.employees.* FROM HR.employees;

--list�zza ki az orsz�gok neveit a hr.countries t�bl�b�l
SELECT   hr.countries.country_name as "asd" FROM HR.countries;

--list�zza ki 
select 1+1 from dual;
--list�zza ki()[]{}<>
--list�zza ki az orsz�gok neveit �s k�djaikat a hr.countries t�bl�b�l
SELECT   hr.countries.country_name as "names",country_id  IDs FROM HR.countries;

--list�zza ki az orsz�gok r�gi�k�djait a HR.countries t�b�lb�l
select hr.countries.region_id as "r�gi�-k�d" from HR.countries GROUP BY region_id;-- order by region_id;
select DISTINCT hr.countries.region_id as "r�gi�-k�d" from HR.countries;
select unique hr.countries.region_id as "r�gi�-k�d" from HR.countries;

--list�zza ki a dolgoz�k vezet�knev�t �s keresztnev�t az employees t�bl�b�l
SELECT
    hr.employees.last_name,first_name
FROM HR.employees;

--list�zzuk ki a hr employees t�bl�ban szerepl� adatok alapj�n a dolgoz�k teljes nev�t
SELECT
    last_name|| ' ' ||first_name as "teljes n�v" 
FROM HR.employees;
