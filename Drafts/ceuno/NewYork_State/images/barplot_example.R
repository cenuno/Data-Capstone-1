#
# import url
rds_url <- "https://github.com/DataCapstone/Data-Capstone/blob/master/Drafts/ceuno/NewYork_State/newyork_state_fy17.rds?raw=true"
# read .rds url
newyork_state <- readRDS( gzcon( url( rds_url ) ) ) # three seconds
# plot
par( mar = c(5, 15, 4, 4))
barplot( height = sort( table( as.factor( newyork_state$type_description ) ) )
         , horiz = TRUE
         , las = 1
         , main = "FY17 Award Types in New York State"
         , xlim = c(0, 4000)
         , xlab = "Award Type Frequency"
)
# draw vertical lines
# Add vertical lines to separate the years
abline( v = seq( from = 1000, to = 4000, by = 1000)
        , col = "gray"
        , lty = 2
)
dev.off()
