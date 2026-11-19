# R for Data Science - AUCA MSc Big Data Analytics

Student: **Manzi Joel**  
Student ID: **20252MBI024**  
Course: R for Data Science (Dr. Pacifique)

This repository shows my progress in the course.

## Contents

| File | What it is |
|---|---|
| `Assignment1_Data_Import.Rmd` / `.html` | Assignment 1: install packages and import data from text files, Excel, SPSS, Stata, SAS, JSON, XML, web pages and databases (SQLite, plus MySQL / Oracle / Access examples). Shows how dplyr and ggplot2 work on the imported data. |
| `Assignment2_Class_Practice.Rmd` / `.html` | Assignment 2: practice of the class codes ([lecture notes](https://rpubs.com/Mapara_lee/1434996)) and the ggplot2 geom functions: `geom_bar`, `geom_boxplot`, `geom_density`, `geom_histogram`, `geom_hline`, `geom_jitter`, `geom_violin`, `geom_text`, `geom_smooth`, `geom_point`, `geom_rug`, `geom_line`, `geom_vline`. |
| `Assignment3_Functions_TTest.Rmd` / `.html` | Assignment 3 (class 3 exercises): my own functions for summary statistics (mean, median, mode, variance, SD, quantiles, range, IQR, CV) and my own two-sample t-test function (Welch and pooled), applied to `mtcars` and checked against R's built-in functions and `t.test()`. |
| `Assignment4_Multiple_Regression.Rmd` / `.html` | Assignment 4 (class 4 homework): multiple linear regression `mpg ~ wt + hp + am` on `mtcars`, with interpretation, model comparison, regression diagnostics (residual plots, normality test, VIF, Cook's distance) and prediction. |
| `data/class_data.txt` | Class height and weight data (43 students). |
| `data/make_sample_data.R` | Script that creates the sample files in all formats. |
| `data/students.*`, `data/school.db` | Sample data in CSV, Excel, SPSS, Stata, SAS, JSON, XML and SQLite. |

## How to run

1. Open the folder in RStudio (R 4.2 or newer).
2. Install packages:
   ```r
   install.packages(c("rmarkdown", "readxl", "writexl", "haven", "foreign",
                      "DBI", "RSQLite", "jsonlite", "xml2", "rvest",
                      "dplyr", "ggplot2", "lattice"))
   ```
3. Open an `.Rmd` file and click **Knit**.

To see the results without R, open the `.html` files.
