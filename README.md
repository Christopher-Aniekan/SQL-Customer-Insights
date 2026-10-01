# SQL Customer Insights 📊

## Project Overview
This project demonstrates the practical application of intermediate and advanced SQL querying to solve business problems. 

## The Challenge
The goal is to analyze customer demographic data to identify segments that deviate from regional averages. Specifically, this query isolates **every customer whose age is greater than the average age of customers in their specific country**.

## Technical Concepts Demonstrated
* **Correlated Subqueries:** Used to dynamically calculate country-specific averages for each row processed by the outer query.
* **Table Aliasing:** Applied to maintain clear separation between the primary query scope (`c`) and the subquery reference scope (`ca`).
* **Conditional Data Filtering:** Used within the `WHERE` clause to flag targeted user anomalies.
