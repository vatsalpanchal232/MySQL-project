create schema cars;
use cars;
-- read data--
select * from car_dekho;
-- total cars: to get a count of total records--
select count(*) from car_dekho;
-- how many cars will be availbale in 2023?--
select count(*) from car_dekho where year = 2023;
-- how many cars were available in year 2020,2021,2022?--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- if clint ask me to print the total of all the cars by year.i dont see all the details--
select year,count(*) from car_dekho group by year;
-- if clint ask to car dekho agent how many diesel cars will be there in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "diesel"; #20
-- clint request to car dealer agent how many petrol cars will be there in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "petrol"; #51 
-- give a print to all the fuel cars (petrol,diesel,and cng) come by all year.--
select year, count(*) from car_dekho where fuel = "petrol" group by year;
select year, count(*) from car_dekho where fuel = "diesel" group by year;
select year, count(*) from car_dekho where fuel = "cng" group by year;
-- there were more then 100 cars in a given year, which year had more then 100 cars?--
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;
-- all cars count details between 2015 and 2023,need a complete list.--
select count(*) from car_dekho group by year between 2015 and 2023;
-- all  cars detail between 2015 to 2023 , need complete list--
select * from car_dekho where year between 2015 and 2023;

-- this was a small project of solving queries and understand how to deal with large dataset--
-- discripstion--
-- learn how to load large dataset and how to creat schema and tables--
-- solve all the queries without errors--
#this was a sample dataset which i have use to make my project i have taken this dataset from car_dekho and done a small project just to show my skills.--
-- i hope you like the project --
-- thank you--
--#pj #by-vatsal panchal.

