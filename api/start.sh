#!/bin/bash
R -e 'r <- plumber::plumb("tes2.R"); if(Sys.getenv("PORT") == "") Sys.setenv(PORT = 8000); r$run(port=as.numeric(Sys.getenv("PORT")), swagger = T)'
