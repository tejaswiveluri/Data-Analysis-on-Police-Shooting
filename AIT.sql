create database AIT;
use AIT;

select * from police_shootings;

# Finding the count of attacks based on Year
select Year, count(*) as count
from police_shootings
group by Year
order by  count desc;


# Finding the attacking styles Vs Year 

select Armed,Year, count(*) as count
from police_shootings
group by Armed,Year
order by  count desc;


## Finding the Fleeing Vs Year
select Fleeing,Year, count(*) as count
from police_shootings
group by Fleeing,Year
order by  count desc;

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Victims Analysis
# group
select Race,Gender,Year, count(*) as Count
from police_shootings
group by Race,Gender,Year
order by  count desc;
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Most Dangerous States
select State,Year, count(*) as Number_of_Incidents
from police_shootings
group by State,Year
order by  Number_of_Incidents desc;

## Year Wise Analysis
#for 2015
select State,Year, count(*) as Number_of_Incidents
from police_shootings
group by State,Year
having Year='2015'
order by  Number_of_Incidents desc;

#For 2016
select State,Year, count(*) as Number_of_Incidents
from police_shootings
group by State,Year
having Year='2016'
order by  Number_of_Incidents desc;

#for 2017
select State,Year, count(*) as Number_of_Incidents
from police_shootings
group by State,Year
having Year='2017'
order by  Number_of_Incidents desc;

# For 2018
select State,Year, count(*) as Number_of_Incidents
from police_shootings
group by State,Year
having Year='2018'
order by  Number_of_Incidents desc;

# For 2019
select State,Year, count(*) as Number_of_Incidents
from police_shootings
group by State,Year
having Year='2019'
order by  Number_of_Incidents desc;

 #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 # Relation between Race and Age
 select Race,Age, count(*) as Number_of_Incidents 
from police_shootings
group by Race,Age 
order by  Number_of_Incidents desc;



#for 2015
select Race,Age,Year, count(*) as Number_of_Incidents
from police_shootings
group by Race,Age,Year
having Year='2015'
order by  Number_of_Incidents desc;

#For 2016
select Race,Age,Year,count(*) as Number_of_Incidents
from police_shootings
group by Race,Age,Year
having Year='2016'
order by  Number_of_Incidents desc;

#for 2017
select Race,Age,Year, count(*) as Number_of_Incidents
from police_shootings
group by Race,Age,Year
having Year='2017'
order by  Number_of_Incidents desc;

# For 2018
select Race,Age,Year, count(*) as Number_of_Incidents
from police_shootings
group by Race,Age,Year
having Year='2018'
order by  Number_of_Incidents desc;

# For 2019
select Race,Age,Year, count(*) as Number_of_Incidents
from police_shootings
group by Race,Age,Year
having Year='2019'
order by  Number_of_Incidents desc;



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Overall Analysis

select Race,Age,State, count(*) as Number_of_Incidents 
from police_shootings
group by Race,Age,State 
order by  Number_of_Incidents desc;
