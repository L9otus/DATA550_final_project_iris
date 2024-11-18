# Analysis of iris dataset
# Xiaohan Li

## Project Description

This project aims to explore the iris dataset, to be specific, 
using data visualization to explore the relationships between variables and three iris species.


## File Sturcture

├── data \
│ ├── iris.data \
│ ├── data_clean.rds

├── code \
│ ├── 00_clean_data.R \
│ ├── 01_make_table.R \
│ ├── 02_make_boxplot.R \
│ ├── 03_render_report.R

├── output \
│ ├── table.rds \
│ ├── boxplot_sepal_length.png \
│ ├── boxplot_sepal_width.png

├── Makefile \
├── README.md \
├── README.html \
├── iris_report.Rmd \
├── iris_report.html


## How to Generate the Final Report
Run each code file step by step: \

 - Run the clean rule first.
 - Use code/00_clean_data.R to clean the data, store the outcome in output folder.
 - Use code/01_make_table.R to create the table, store the outcome in output folder.
 - Use code/02_make_boxplot.R to create two boxplots, store the outcome in output folder.
 - Use code/03_render_report.R to render the iris_report.Rmd and produce a html report.

\

Or, just run the following commands in terminal:
```bash
make clean
make iris_report.html
```
\

The code file that creates the table: code/01_make_table.R \
The code file that creates the figure: code/02_make_boxplot.R

## Contents of the Report
 - Description of the iris data set
 - Analysis objectives
 - Read in Data
 - Tabular analysis (table)
 - Graphical analysis (boxplots)
