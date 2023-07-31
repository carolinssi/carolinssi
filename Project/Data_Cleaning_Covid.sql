
-- Looking for the type of data in each of the coloumns 
Use Portfolio
Select *
From INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CovidDeaths'

exec sp_help 'CovidDeaths'


--Select *
--From Portfolio..CovidVaccinations
--Order By 3,4


Select Location, date, total_cases, new_cases, total_deaths, population
From Portfolio..CovidDeaths
Order By 1,2

Select *
From Portfolio..CovidVaccinations
Order By 1,2

---- How to change type data from nvarchar to numeric
---- Step 1: Create a backup copy of the table
--SELECT * INTO Portfolio.dbo.CovidDeaths_backup
--FROM Portfolio.dbo.CovidDeaths;

---- Step 2: Add new numeric columns to the table
--ALTER TABLE Portfolio.dbo.CovidDeaths
--ADD total_cases_numeric NUMERIC(20,2),
--    total_deaths_numeric NUMERIC(20,2),
--	population_numeric NUMERIC(20,2);

---- Step 3: Set the values of the new columns using TRY_CAST
--UPDATE Portfolio.dbo.CovidDeaths
--SET total_cases_numeric = TRY_CAST(total_cases AS NUMERIC(20,2)),
--    total_deaths_numeric = TRY_CAST(total_deaths AS NUMERIC(20,2)),
--	population_numeric = TRY_CAST(population AS NUMERIC(20,2));

---- Step 4: OPTIONAL! Drop the original nvarchar columns
--ALTER TABLE Portfolio.dbo.CovidDeaths
--DROP COLUMN total_cases,
--            total_deaths,
--			population;

---- Step 5: OPTIONAL! Rename the new numeric columns to the original names
--EXEC sp_rename 'Portfolio.dbo.CovidDeaths.total_cases_numeric', 'total_cases', 'COLUMN';
--EXEC sp_rename 'Portfolio.dbo.CovidDeaths.total_deaths_numeric', 'total_deaths', 'COLUMN';
--EXEC sp_rename 'Portfolio.dbo.CovidDeaths.population_numeric', 'population', 'COLUMN';

--Looking at Total Cases VS Total Deaths
--Highest death percentage of each Country
Select Location, population, MAX(total_cases) AS HighestInfectionCount, MAX(total_deaths) AS HighestDeath, MAX(total_deaths)/MAX(total_cases)*100 AS HighestDeathPercentage
From Portfolio..CovidDeaths
Group By location, population
Order By HighestDeath DESC

--Looking at Total Cases VS Total Deaths
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercetage
From Portfolio..CovidDeaths
Order By 1,2

--Looking at Total Cases VS Total Deaths
--Highest death percentage of each Country
Select Location, population, MAX(total_cases) AS HighestInfectionCount, MAX(total_deaths/total_cases)*100 AS HighestDeathPercetage
From Portfolio..CovidDeaths
Group By location, population
Order By 1,2

-- Looking at Total Cases VS population 
-- Show what percentage of population got Covid
Select Location, population, total_cases, (total_cases/population)*100 AS PercentPopulationInfected 
From Portfolio..CovidDeaths
Order By 1,2

--Looking at Total Cases VS population 
--At countries with the hightest infection rate compared to population
Select Location, population,  MAX(total_cases) AS HighestInfectionCount, Max(total_cases/population)*100 AS PercentPopulationInfected 
From Portfolio..CovidDeaths
Where Continent is not NULL			-- shows all country without continent data
Group By location, population
Order By HighestInfectionCount DESC


--Looking at Total Cases VS population 
--At Continent with the hightest infection rate compared to population
Select location, MAX(total_cases) AS HighestInfectionCount, Max(total_cases/population)*100 AS PercentPopulationInfected 
From Portfolio..CovidDeaths
Where Continent is NULL			-- shows all continent data
Group By location
Order By HighestInfectionCount DESC

--GLOBAL NUMBERs
Select Date, sum(cast(new_cases as numeric(20,2))) as total_cases, sum(cast(new_deaths as numeric(20,2))) as total_death,
(sum(cast(new_deaths as numeric(20,2)))/sum(cast(new_cases as numeric(20,2))))*100 as DeathPercentage
From Portfolio..CovidDeaths
where continent is not null and cast(new_cases as numeric(20,2)) <> 0
Group By Date
Order by 1,2

--GLOBAL NUMBERs
Select sum(cast(new_cases as numeric(20,2))) as total_cases, sum(cast(new_deaths as numeric(20,2))) as total_death,
(sum(cast(new_deaths as numeric(20,2)))/sum(cast(new_cases as numeric(20,2))))*100 as DeathPercentage
From Portfolio..CovidDeaths
where continent is not null and cast(new_cases as numeric(20,2)) <> 0
Order by 1,2

-- Looking at total population vs Vaccinations
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,sum(cast(new_vaccinations as numeric(20,2))) OVER (Partition by dea.location Order By dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100 -> error ->> solved by using CTE's
From Portfolio..CovidDeaths dea
JOIN Portfolio..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
Order by 2,3

-- USE CTE
With PopvcVac (Continent, Location, Date, Population, New_Vaccinations, RollingPeopleVaccinated)
as 
(
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,sum(cast(new_vaccinations as numeric(20,2))) OVER (Partition by dea.location Order By dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100 -> error ->> solved by using CTE's
From Portfolio..CovidDeaths dea
JOIN Portfolio..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--Order by 2,3
)

Select *, (RollingPeopleVaccinated/Population)*100
From PopvcVac


--TEMP TABLE

DROP TABLE IF EXISTS #PercentPopulationVaccinated
create table #PercentPopulationVaccinated
(
Continent nvarchar(255), 
Location nvarchar(255), 
Date datetime, 
Population numeric, 
New_vaccinations numeric, 
RollingPeopleVaccinated numeric
)

insert into  #PercentPopulationVaccinated
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,sum(cast(new_vaccinations as numeric(20,2))) OVER (Partition by dea.location Order By dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100 -> error ->> solved by using CTE's
From Portfolio..CovidDeaths dea
JOIN Portfolio..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
--where dea.continent is not null
--Order by 2,3

Select *, (RollingPeopleVaccinated/Population)*100
From #PercentPopulationVaccinated


--Creating View to store data for later visualisations 
 

Create View PercentPopulationVaccinated as
Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
,sum(cast(new_vaccinations as numeric(20,2))) OVER (Partition by dea.location Order By dea.location, dea.Date) as RollingPeopleVaccinated
--, (RollingPeopleVaccinated/population)*100 -> error ->> solved by using CTE's
From Portfolio..CovidDeaths dea
JOIN Portfolio..CovidVaccinations vac
	ON dea.location = vac.location
	and dea.date = vac.date
where dea.continent is not null
--Order by 2,3

Select * 
From PercentPopulationVaccinated
