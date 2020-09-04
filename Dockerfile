FROM r-base:4.0.2

RUN apt-get update && apt-get install -y --no-install-recommends libcurl4-openssl-dev libxml2-dev libssl-dev && apt-get install -y ghostscript

RUN R --slave -e 'install.packages(c("devtools", "BiocManager"))' && \
    R --slave -e 'BiocManager::install(c("optparse", "data.table", "VariantAnnotation"), update=TRUE, ask=FALSE)' && \
    R --slave -e 'devtools::install_github("caravagn/mobster")'
