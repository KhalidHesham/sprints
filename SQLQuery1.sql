--death count by continent 
select continent, max(cast(total_deaths as int)) as Highest_deaths_count
from ..coviddeaths
where continent is not null 
group by continent

--top ranking countries in death rate per million population **
SELECT top 10 location,population,max(total_deaths) as total_deaths, round((max(total_deaths) / (population / 1000000)),0) AS deaths_per_million
from ..coviddeaths
group by location, population 
order by deaths_per_million desc

--top ranked countries by tests per million population 
SELECT d.location, (max(v.total_tests) / (d.population / 1000000)) AS tests_per_million
from ..coviddeaths d
join ..covidvaccinations v
	on d.location = v.location 
group by d.location, population 
order by tests_per_million desc


select d.location, d.population, max(v.total_tests) as total_tests
from ..coviddeaths d
join ..covidvaccinations v
	on d.location = v.location
  
group by d.location,d.population
order by max(v.total_tests) DESC 




--top ranked countries by tests per million population 
SELECT top 10 d.location, d.population, max(v.total_tests) as total_tests, round((max(v.total_tests) / (d.population / 1000000)),0) AS tests_per_million
from ..coviddeaths d
join ..covidvaccinations v
	on d.location = v.location 

group by d.location, population 
order by tests_per_million desc 


--top ranked countries by tests per million population where the population is greater than 10 million (for a clearer context) 
SELECT top 10 d.location, d.population, max(v.total_tests) as total_tests, round((max(v.total_tests) / (d.population / 1000000)),0) AS tests_per_million
from ..coviddeaths d
join ..covidvaccinations v
	on d.location = v.location 
where d.population > 10000000
group by d.location, population 
order by tests_per_million desc 


--top 10 ranked countries by tests per million population where the population is greater than 10 million (for a clearer context) 
SELECT top 10 d.location, d.population, max(v.total_tests) as total_tests, round((max(v.total_tests) / (d.population / 1000000)),0) AS tests_per_million
from ..coviddeaths d
join ..covidvaccinations v
	on d.location = v.location 
where d.population > 10000000
group by d.location, population 
order by tests_per_million desc
