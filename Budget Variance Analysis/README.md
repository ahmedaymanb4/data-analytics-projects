# The work done [is here](https://github.com/ahmedaymanb4/data-analytics-projects/tree/main/Budget%20Variance%20Analysis)

# What is required here in that analysis? Or simply the goal:
To Run a budget variance analysis on the **attached files** and get:
* Total Budget
* Total Actual
* Budget Variance
* Budget Variance %

# Process of Analysis and Data Preprocessing & Cleaning..
In brief these are the steps I made: 
* To create the database schema & implement it 
* To convert the data format from excel tables to sql tables. To do this directly is not usually safe. 
* I find that the most easiest & safiest way is to convert it to txt file (with delimeters). 
* Then by using 'regex' or 'regular expressions' in Visual Studio Code, clean the data, I have to: 
    - re-format it (like date format for example from dd/mm/yyyy to yyyy-mm-dd).
    - find `(.*)` and replace it with `INSERT INTO budget_variance_depi.budget (EOMonth,Aspen,Carlota,Quad) VALUES ($1);`
    - find `(.*)` and replace it with `INSERT INTO budget_variance_depi.actual (date,product,Sales) VALUES ($1);` 
        - For more info about what this regex expression mean, check [this microsoft resources about regular expressions](https://learn.microsoft.com/en-us/visualstudio/ide/using-regular-expressions-in-visual-studio)

# What is Budget Variance Analysis? [Source](https://www.datarails.com/budget-variance-analysis-guide)
It's the practice of comparing actual results to the budget values for the same time period and analyzing the variances. So, to calculate budget variance is simply to: 
1. compare the actual results to the budget 
2. and find the difference between the values. 
Which looks like: `Budget variance = Budget value – Actual value`
