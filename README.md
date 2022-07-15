# US States Analysis and Comparison using Python and SQL
### Project Objectives:
- obtain, integrate, and clean data on the US 50 states into a composite and useable dataframe
- generate insightful visualizations depicting variable relationships, state comparisons, and regional trends
- write SQL queries for statistical analysis of variable distributions<br/>
### How to View:
The jupyter notebook `state.ipynb` has all python code, step-by-step explanations of the process, all generated output, all data sources and links, and notes for when the included SQL scripts were utilized. Please follow along `state.ipynb` and see SQL scripts when noted. <br/>
### Process and Technologies:
1. Data Wrangling 
   - web scraping using `requests` and `BeautifulSoup`
   - parsing of HTML and XML using regular expressions 
   - use of `pandas` to read CSV files, filter variables, convert data types, join and format data frames
2. Load prepared data into SQL
   - create an engine using `sqlalchemy` to send data to postgresSQL database
3. Data Visualizations and Data Analysis
   - plotting of features using `matplotlib` and `seaborn`
   - summary tables using `pandas`
   - SQL queries: aggregate functions, subqueries, standard clauses: GROUP BY, WHERE, ORDER BY, UNION, DENSE_RANK, LIMIT, ROUND, PERCENTILE_DISK, etc
