create schema cars;
use cars;
-- Read Data --
select* from car_dekho;
-- Table cars: To get a count of total records --
select count(*) from car_dekho;
-- The manager ask the employee, how many cars are available for 2023? --
select count(*) from car_dekho where year = 2023;
select count(*) from car_dekho where year = 2020;
select count(*) from car_dekho where year = 2021;
select count(*) from car_dekho where year = 2022;
-- Group By --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Client asked me to print the total of all cars by year --
select year,count(*) from car_dekho group by year;
-- Client asked the dealer, how many diesel cars will be there in 2020 -- 
select count(*) from car_dekho where year=2020 and fuel="diesel";
-- Client requested a car dealer agent, how many petrol cars will be there in 2020 --
select count(*) from car_dekho where year=2020 and fuel="petrol";
-- The manager told the empoloyee to give a print all fuel cars (petrol,diesel,and CNG) come by all year -- 
select year,count(*) from car_dekho where fuel="petrol" group by year;
select year,count(*) from car_dekho where fuel="diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;
-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;
-- The manager said to the employee all cars count details between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023;
-- The manager said to the employee all cars details between 2015 to 2023 we need complete list--
select * from car_dekho where year between 2015 and 2023;

