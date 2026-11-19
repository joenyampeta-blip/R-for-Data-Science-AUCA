# Creates the sample data files used in the data import project.
# Run once from the project folder:  source("data/make_sample_data.R")
# It writes the same small student dataset into many formats,
# so we can practise importing each format in R.

library(haven)    # SPSS, Stata, SAS
library(writexl)  # Excel
library(DBI)      # Database interface
library(RSQLite)  # SQLite database
library(jsonlite) # JSON
library(xml2)     # XML

set.seed(2026)
students <- data.frame(
  id         = 1:20,
  gender     = sample(c("M", "F"), 20, replace = TRUE),
  age        = sample(22:40, 20, replace = TRUE),
  program    = sample(c("Big Data", "Networks", "Info Systems"), 20, replace = TRUE),
  math_score = round(runif(20, 40, 95)),
  it_score   = round(runif(20, 45, 98))
)

dir.create("data", showWarnings = FALSE)

# 1. Text / CSV
write.csv(students, "data/students.csv", row.names = FALSE)

# 2. Excel
write_xlsx(students, "data/students.xlsx")

# 3. Statistical packages
write_sav(students, "data/students.sav")   # SPSS
write_dta(students, "data/students.dta")   # Stata
write_xpt(students, "data/students.xpt")   # SAS (transport file)

# 4. JSON
write_json(students, "data/students.json", pretty = TRUE)

# 5. XML
doc <- xml_new_root("students")
for (i in seq_len(nrow(students))) {
  s <- xml_add_child(doc, "student")
  for (col in names(students)) xml_add_child(s, col, as.character(students[i, col]))
}
write_xml(doc, "data/students.xml")

# 6. Database (SQLite) with two tables
con <- dbConnect(SQLite(), "data/school.db")
dbWriteTable(con, "students", students, overwrite = TRUE)
courses <- data.frame(
  program = c("Big Data", "Networks", "Info Systems"),
  faculty = c("Computing", "Computing", "Business IT"),
  credits = c(60, 54, 48)
)
dbWriteTable(con, "courses", courses, overwrite = TRUE)
dbDisconnect(con)

cat("Sample data files created in data/\n")
