use credit_card_apporaval;
SELECT * FROM credit_card_approval;

## 1.Group the customers based on their income type and find the average of their annual income.

select Type_Income,avg(Annual_income) from  credit_card_approval
group by Type_Income;

##2.Find the female owners of cars and property.

select GENDER,car_owner, propert_owner from  credit_card_approval
where car_owner="y" AND propert_owner="y" AND GENDER="F";

##3.Find the male customers who are staying with their families.

select  GENDER,Marital_status from  credit_card_approval
where Marital_status in ("Married","Civil marriage" )AND  GENDER="M";


##4.Please list the top five people having the highest income.

 select * from credit_card_approval
 order by Annual_income DESC limit 5;
 
##5.How many married people are having bad credit?

 select Marital_status,round(avg(Annual_income)) as avg,count(*) from credit_card_approval
 group by Marital_status
 having Marital_status in ("Married","Civil marriage") AND Marital_status<avg;

##6.What is the highest education level and what is the total count?

 select EDUCATION ,count(*) as total_count from credit_card_approval
 group by  EDUCATION
 HAVING EDUCATION ="Academic degree";

##7.Between married males and females, who is having more bad credit? 

 select Marital_status,round(avg(Annual_income)) as avg,count(*),GENDER from credit_card_approval
 group by Marital_status,GENDER
 having Marital_status in ("Married","Civil marriage") AND Marital_status<avg
 order by GENDER asc;


