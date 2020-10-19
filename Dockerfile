FROM drtomc/essential-r:latest

RUN R --slave -e 'devtools::install_github("caravagn/mobster")'
