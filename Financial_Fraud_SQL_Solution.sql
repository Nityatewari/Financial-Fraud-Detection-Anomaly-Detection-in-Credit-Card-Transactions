create schema finance;

#Data Exploration with SQL:Calculate the total number of transactions in the cc_data table.
use finance;
select count(*) as total_transactions from cc_data_dec19;

#Identify the top 10 most frequent merchants in the cc_data_dec19 table.
select merchant, count(*) as transaction_count from cc_data_dec19 group by merchant order by transaction_count DESC limit 10;

#Find the average transaction amount for each category of transactions in the cc_data_dec19 table.
select category, round(avg(amt),2) as avg_transaction_amount from cc_data_dec19 group by category;

#Determine the number of fraudulent transactions and the percentage of total transactions that they represent.
select count(*) as fraud_count, round(count(*) * 100.0/(select count(*) from cc_data_dec19),2) as fraud_percent
from cc_data_dec19 where is_fraud=1;

#Join the cc_data and location_data tables to identify the latitude and longitude of each transaction.
select c.*, l.lat, l.long from cc_data_dec19 as c left join location_data as l on c.cc_num = l.cc_num;

#Identify the city with the highest population in the cc_data_dec19 table.
select city, city_pop from cc_data_dec19 order by city_pop DESC limit 1;

#Find the earliest and latest transaction dates in the cc_data_dec19 table.
select MIN(trans_date_trans_time) AS earliest_transaction, MAX(trans_date_trans_time) AS latest_transaction
from cc_data_dec19;

#. Using Data Aggregation with SQL:What is the total amount spent across all transactions in the cc_data table?
select round(sum(amt),2) as total_amount_spent from cc_data_dec19;

#How many transactions occurred in each category in the cc_data table?
select category, count(*) AS transaction_count from cc_data_dec19 group by category order by transaction_count DESC;

#What is the average transaction amount for each gender in the cc_data table?
select gender,round(avg(amt),2) as avg_transaction_amount from cc_data_dec19 group by gender;

#Which day of the week has the highest average transaction amount in the cc_data table?
select DAYNAME(STR_TO_DATE(trans_date_trans_time,'%d/%m/%y %H:%i')) as day_of_week, avg(amt) as avg_transaction_amount
from cc_data_dec19 group by day_of_week order by avg_transaction_amount DESC;

