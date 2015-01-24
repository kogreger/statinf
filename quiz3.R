## Q1
mean <- 1100
s <- 30
n <- 9
mean + c(-1, 1) * qt(0.975, df = n - 1) * s / sqrt(n)
# [1] 1076.94 1123.06


## Q2
n <- 9
m <- -2
s <- 2.6  # <- solution
-2 + c(-1, 1) * qt(.975, 8) * s / 3
# [1] -3.998536917 -0.001463083


## Q3
# paired interval


## Q4
mn <- 3
mo <- 5
sn <- sqrt(.6)
so <- sqrt(.68)
nn <- 10
no <- 10
sp <- sqrt(((nn - 1) * sn ^ 2 + (no - 1) * so ^ 2) / (nn + no - 2))
mn - mo + c(-1, 1) * qt(.975, (nn + no - 2)) * sp  * (1 / nn + 1 / no) ^ .5
# [1] -2.751649 -1.248351


## Q5
# narrower


## Q6
mx <- 4 # x is new system
my <- 6 # y is old system
sx <- .5
sy <- 2
nx <- 100
ny <- 100
df <- ((sx ^ 2 / nx + sy ^2 / ny) ^ 2) / 
    ((((sx ^ 2 / nx) ^ 2) / (nx -1)) + (((sy ^ 2 / ny) ^ 2) / (ny -1)))
my - mx + c(-1, 1) * qt(.975, df) * (((sx ^ 2) / nx) + ((sy ^ 2) / ny)) ^ .5 # t quantile
# [1] 1.591503 2.408497
my - mx + c(-1, 1) * qnorm(.975) * (((sx ^ 2) / nx) + ((sy ^ 2) / ny)) ^ .5  # z quantile
# [1] 1.595943 2.404057
# effective


## Q7
mx <- 1 # x is placebo
my <- -3 # y is treated
sx <- 1.8
sy <- 1.5
nx <- 9
ny <- 9
sp <- sqrt((((nx - 1) * sx ^ 2) + ((ny - 1) * sy ^ 2)) / nx + ny - 2)
my - mx + c(-1, 1) * qt(.95, 16) * sp * ((1 / nx) + (1 / ny)) ^ .5
# [1] -5.363579 -2.636421