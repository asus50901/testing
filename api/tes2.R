library(dygraphs)
library(datasets)

#'@get /spots/<year>/graph
#'@serializer htmlwidget

function(year) {
  dygraph(sunspots, main='sumspots') %>%
    dyRangeSelector(dateWindow = c(
      paste0(year, "-01-01"),
      paste0(year, "-12-31")
    ))
}
