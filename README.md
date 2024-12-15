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
├── Dockerfile \
├── README.md \
├── README.html \
├── iris_report.Rmd \
├── iris_report.html




## How to Download the Docker Image
```bash
docker pull l9otus/data550_final_image
```

Link to the image on DockerHub: \
https://hub.docker.com/repository/docker/l9otus/data550_final_image/general


## How to Build the Docker Image
```bash
docker build -t l9otus/data550_final_image .
```

## How to Run the Docker Image
```bash
make report/iris_report.html
```


## All Steps Needed to Generate the Final Report
Run following steps in terminal:

Step 1:
```bash
git clone https://github.com/L9otus/DATA550_final_project_iris
cd DATA550_final_project_iris
```

Step 2 (run one of the following): 
 
 - For Windows users:
```bash
docker pull l9otus/data550_final_image
```

 - For Mac users: (Work on Apple M1 chip)
```bash
docker pull --platform linux/amd64 l9otus/data550_final_image
```

Step 3:
```bash
make clean
make report/iris_report.html
```

\
Now you should be able to view `iris_report.html` in the `report` folder

\
Tips:

If add/delete/update any package, run following in console to synchronize the renv library and renv.lock:
```r
renv::snapshot()
```



## Contents of the Report
 - Description of the iris data set
 - Analysis objectives
 - Read in Data
 - Tabular analysis (table)
 - Graphical analysis (boxplots)
 
 
 \
The code file that creates the table: code/01_make_table.R \
The code file that creates the figure: code/02_make_boxplot.R
