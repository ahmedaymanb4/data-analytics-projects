# The work done [is here](https://github.com/ahmedaymanb4/data-analytics-projects/tree/main/Budget%20Variance%20Analysis)
- `(data source) Budget Variance.xlsx`
- `SQL Files`: SQL files of query statements; It's organized to:
  - create the schema with tables and their columns,
  - add the values to 'budget' & 'actual' tables,
  - and finally, calculate the budget variance and its percentages.
- `ER Budget Analysis.png`: Entity-Relationship Diagram to represent the entities exist in this database.
- `SQL Outputs (from budget variance SQL file queries)`

# What is required here in that analysis? Or simply the goal:
To Run a budget variance analysis on the **attached files** and get:
* Total Budget
* Total Actual
* Budget Variance
* Budget Variance %

# Process of Analysis and Data Preprocessing & Cleaning..
In brief these are the steps I made: 
* To **create the database** schema & implement it
* Design **ER diagram**, which is found [here (Lucid App link)](https://lucid.app/lucidchart/640152a3-00ab-462e-823a-9a2f1929d25a/edit?invitationId=inv_383ce78d-5002-44a8-9ba3-681cc59e892c) or [here at the repo](https://github.com/ahmedaymanb4/data-analytics-projects/blob/a9ad5b3d07f1b7a84481ffd36b53a6fad6a2da46/Budget%20Variance%20Analysis/ER%20Budget%20Analysis.png) if Lucid App link doesn't work
* To **convert the data** format from excel tables to sql tables.
    - To do this directly is not usually safe. So, I find that the most easiest & safiest way is to convert it to txt file (with delimeters). 
* To **clean the data**, by using 'regex or regular expressions' in Visual Studio Code, I have to: 
    - re-format it (like date format for example from dd/mm/yyyy to yyyy-mm-dd).
    - find `(.*)` and replace it with `INSERT INTO budget_variance_depi.budget (EOMonth,Aspen,Carlota,Quad) VALUES ($1);`
    - find `(.*)` and replace it with `INSERT INTO budget_variance_depi.actual (date,product,Sales) VALUES ($1);` 
    - For more info about what this regex expression mean, check [this microsoft resources about regular expressions](https://learn.microsoft.com/en-us/visualstudio/ide/using-regular-expressions-in-visual-studio)

# What is Budget Variance Analysis? [Source](https://www.datarails.com/budget-variance-analysis-guide)
It's the practice of comparing actual results to the budget values for the same time period and analyzing the variances. So, to calculate budget variance is simply to: 
1. compare the actual results to the budget 
2. and find the difference between the values. 
Which looks like: `Budget variance = Budget value – Actual value`
