use world;

select count(*)
from city
where countrycode='USA';

select max(LifeExpectancy)
from country;

select id, countrycode,district ,name as 'New_cities'
from city;


select *
from city
limit 10;

select *
from city
where population>2000000;

select *
from city
where name like 'be%';


select population
from city
where population between 500000 and 1000000;

select *
from city
order by name;

select max(population)
from city;

select name cityname, count(*) as frequency
from city
group by name
order by name;

select min(Population)
from city;

select max(population)
from country;

select name, capital
from country
where name='spain';

select continent, city.countrycode, city.name
from country
inner join city
on city.countrycode= country.code
where continent='europe';

select avg(population)as AvgPopulation, name
from country
group by name;

select  City.name as cityname, country.name as CountryName, Country.population
from country
inner join city
on city.countrycode=country.code;


select name as CountryName, population
from country
order by population;

SELECT name as CityName, country.name as countryName, country.gnp/country.population as GDPperCapita
FROM City 
inner JOIN Country 
ON city.Countrycode = country.Code;

select city.name as CityName, (country.gnp*1000000/country.Population) as GDPperCapita
from city 
inner join country 
on city.CountryCode=country.Code
where (country.gnp*1000000/country.Population) > (select avg(gnp*1000000/Population) from country)
order by GDPperCapita desc;


select name, population 
from city
order by population desc
limit 30,10;