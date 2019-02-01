FROM rocker/tidyverse

WORKDIR /Desktop/testing

RUN apt-get update -qq && apt-get install -y \
    git-core \
    libssk-dev \
    libcurl4-gnutls-dev 

RUN R -e "install.packages('plumber')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('dplyr')"

COPY //

EXPOSE 8000

ENTRYPOINT["RScript", "plumb.R"]
CMD["tes2.R"]