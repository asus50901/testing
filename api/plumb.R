library(plumber)

r <- plumb("tes2.R")

r$run(port=8000, swagger = T)
