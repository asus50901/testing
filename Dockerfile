FROM rocker/tidyverse

WORKDIR /Desktop/testing

RUN apt-get update -qq && apt-get install -y \ 
    git-core \ 
    libssl-dev \ 
    libcurl4-gnutls-dev 

COPY / /

RUN chmod 700 /api/start.sh

RUN R -e "install.packages('plumber')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('dygraphs')"

EXPOSE 8000

ENTRYPOINT ["/User/user/Desktop/testing/api/start.sh"]
CMD ["tes2.R"]
