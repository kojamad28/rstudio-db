FROM rocker/rstudio:latest

RUN apt-get update && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN R -e 'install.packages(c("tidyverse", "DBI", "RPostgreSQL"), dependencies = TRUE)'
