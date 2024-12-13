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









## Project Image       没写完！


DockerHub: ........................

To download the image:

```bash
docker pull l9otus/...........
```
###### 没写完！








## How to Generate the Final Report

Run the following commands in terminal:
```bash
make clean
make install #restore the package environment for this project
make iris_report.html
```

\
If add/delete/update any package, run following code to synchronize the renv library and renv.lock:
```r
renv::snapshot()
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
