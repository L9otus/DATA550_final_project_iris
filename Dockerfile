FROM rocker/rstudio:4.4.1

RUN apt-get update && apt-get install -y \
  pandoc 
  

RUN mkdir /project
WORKDIR /project

RUN mkdir data
RUN mkdir code
RUN mkdir output
COPY data data
COPY code code
COPY Makefile .
COPY iris_report.Rmd .


COPY .Rprofile .
COPY renv.lock .
RUN mkdir renv
COPY renv/activate.R renv
COPY renv/settings.json renv


RUN Rscript -e "renv::restore(prompt = FALSE)"


RUN mkdir -p report


CMD make iris_report.html && mv iris_report.html report
