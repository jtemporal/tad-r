FROM r-base:3.4.2

COPY dependencies.r .
RUN Rscript dependencies.r

WORKDIR /code
