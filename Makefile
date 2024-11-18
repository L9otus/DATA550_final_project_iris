# Clean the data
data/data_clean.rds: data/iris.data code/00_clean_data.R
	Rscript code/00_clean_data.R

# Build the output of code/01_make_table.R
output/table.rds: data/data_clean.rds code/01_make_table.R
	Rscript code/01_make_table.R

# Build the output of code/02_make_boxplot.R
output/boxplot_sepal_length.png output/boxplot_sepal_length.png &: data/data_clean.rds code/02_make_boxplot.R
	Rscript code/02_make_boxplot.R
	
# Render the report
iris_report.html: code/03_render_report.R iris_report.Rmd \
  data/data_clean.rds output/table.rds output/boxplot_sepal_length.png output/boxplot_sepal_length.png
	Rscript code/03_render_report.R



# Clean	rule
.PHONY: clean
clean:
	rm -f output/* && \
	rm -f data/*.rds && \
	rm -f iris_report.html && \
	rm -f .DS_Store && \
	rm -f .RDataTmp && \
	rm -f .Rhistory