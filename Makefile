# report-associated rules (run within Docker container)

## 00.clean the data
data/data_clean.rds: data/iris.data code/00_clean_data.R
	Rscript code/00_clean_data.R

## 01.build the output of code/01_make_table.R
output/table.rds: data/data_clean.rds code/01_make_table.R
	Rscript code/01_make_table.R

## 02.build the output of code/02_make_boxplot.R
output/boxplot_sepal_length.png output/boxplot_sepal_length.png &: data/data_clean.rds code/02_make_boxplot.R
	Rscript code/02_make_boxplot.R
	
## 03.render the report
iris_report.html: iris_report.Rmd code/03_render_report.R \
  data/data_clean.rds output/table.rds output/boxplot_sepal_length.png output/boxplot_sepal_length.png
	Rscript code/03_render_report.R

## install rule
.PHONY: install
install:
	Rscript -e "renv::restore(prompt=FALSE)"

## clean	rule
.PHONY: clean
clean:
	rm -f output/* && \
	rm -f data/*.rds && \
	rm -f iris_report.html && \
	rm -f .Rhistory
	

	
# Docker-associated rules (run on our local machine)
PROJECTFILES = iris_report.Rmd code/00_celan_data.R code/01_make_table.R code/02_make_boxplot.R code/03_render_report.R Makefile
RENVFILES = renv.lock renv/activate.R renv/settings.json


# Rule to build image
data550_final_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
	docker build -t data550_final_image .
	touch $@


# Rule to build the report automatically in our container
report/report.html: data550_final_image
	docker run -v "/$$(pwd)/report":/project/report data550_final_image
