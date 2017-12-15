FROM r-base:3.4.2

COPY dependencies.R .
RUN Rscript dependencies.R

WORKDIR /code
