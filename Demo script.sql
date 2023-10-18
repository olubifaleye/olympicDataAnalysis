-- Count the number of athletes from each country;
SELECT NOC, COUNT(NOC) as athletesCount 
from athletes 
GROUP BY NOC 
ORDER BY athletesCount DESC;

-- Calculate the total number of medals won by each country
SELECT Team_NOC, SUM(Gold) as total_gold, SUM(Silver) as total_silver, SUM(Bronze) as total_bronze,
SUM(Gold + Silver + Bronze) as total_medals
FROM medals
GROUP BY Team_NOC
ORDER BY total_gold DESC;

-- Calculate the average number of entries by gender for each discipline
SELECT Discipline,
cast(Female as float) / Total as AVG_Female,
cast(Male as float) / Total as AVG_Male
from entries_gender;