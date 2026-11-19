# R-Data-Science-Projects

This is a repo of my R programming projects for the R for Data Science course (AUCA MSc Big Data Analytics).

Student: **Manzi Joel** (ID: 20252MBI024)

## Files

| File | What it is |
|---|---|
| `Joel data import.Rmd` | Installing packages and importing data from text files, Excel, SPSS, Stata, SAS, JSON, XML, web pages and databases (SQLite, MySQL, Oracle, Access). |
| `Joel Practice.Rmd` | Practice of the class codes and the ggplot2 geom functions (`geom_bar`, `geom_boxplot`, `geom_density`, `geom_histogram`, `geom_hline`, `geom_jitter`, `geom_line`, `geom_point`, `geom_rug`, `geom_smooth`, `geom_text`, `geom_violin`, `geom_vline`). |
| `functions_and_ttest.Rmd` | My own functions for summary statistics and a two-sample t-test function, checked against R's built-in functions. |
| `multiple_regression.Rmd` | Multiple linear regression on `mtcars`, with interpretation and regression diagnostics. |
| `data/` | Sample data files used in the projects. |

## How to run

1. Open the folder in RStudio (R 4.2 or newer).
2. Install packages:
   ```r
   install.packages(c("rmarkdown", "readxl", "writexl", "haven", "foreign",
                      "DBI", "RSQLite", "jsonlite", "xml2", "rvest",
                      "dplyr", "ggplot2", "lattice"))
   ```
3. Open an `.Rmd` file and click **Knit**.
