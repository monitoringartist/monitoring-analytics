FROM r-base:latest

MAINTAINER Jan Garaj "info@monitoringartist.com"

ENV SHINY_LOG_LEVEL=WARN

RUN apt-get update && apt-get install -y -t unstable \
    sudo \
    pandoc \
    gdebi \
    libssl-dev \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev && \
    wget --no-verbose https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/VERSION -O "version.txt" && \
    VERSION=$(cat version.txt)  && \
    wget --no-verbose "https://s3.amazonaws.com/rstudio-shiny-server-os-build/ubuntu-12.04/x86_64/shiny-server-$VERSION-amd64.deb" -O ss-latest.deb && \
    gdebi -n ss-latest.deb && \
    apt-get clean && \
    rm -f version.txt ss-latest.deb
RUN \
    R -e "install.packages(c('shiny', 'ggplot2'), repos='https://cran.rstudio.com/')" && \
    R -e "install.packages('RZabbix')" && \
    rm -rf /usr/local/lib/R/site-library/shiny/examples/* && \
    rm -rf /tmp/* && \
    apt-get clean
    
COPY shiny /srv/shiny-server/

EXPOSE 3838

CMD ["shiny-server"]
