# griddap examples
murSST <- griddap(
  'jplMURSST41', latitude = c(22, 51), longitude = c(-140, -105),
  time = c('last', 'last'), fields = 'analysed_sst'
 )
library(ggplot2)

p <- plotdap(crs = "+proj=robin")
add_griddap(p, murSST, ~analysed_sst)
