--List each country name where the population is larger than that of 'Russia'.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
select name
from world
where continent = "Europe" and gdp/population >
(select gdp/population from world
where name = "United Kingdom")

--List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
select name, continent
from world
where continent in 
(select continent from world
 where name in ( "Argentina" , "Australia"))
order by name

--Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.
