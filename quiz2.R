## Q1
# solution: Var(Xbar) = sigma ^ 2 / n
# from L5.3_00:41


## Q2
pnorm(70, mean = 80, sd = 10)
# [1] 0.1586553


## Q3
qnorm(.95, mean = 1100, sd = 75)
# [1] 1223.364


## Q4
sample_sd <- 75 / sqrt(100)
qnorm(.95, mean = 1100, sd = sample_sd)
# [1] 1112.336


## Q5
pbinom(3, size = 5, prob = .5, lower.tail = FALSE)
# [1] 0.1875
# NOT pbinom(4, size = 5, prob = .5, lower.tail = FALSE) !!


## Q6
# solution: 68%
mu <- 15
S <- 10
n <- 100
se <- S / sqrt(n)
# how many stdev below/above the sample mean are 14 and 16?
(c(14, 16) - mu) / se
# [1] -1  1
# -> 1 stdev each, so the probability has to be 68%


## Q7
n <- 1000000
mean(apply(matrix(runif(n), n), 1, mean))
# [1] 0.5000442


## Q8
mu <- 5
t <- 3
lambda <- mu * t
ppois(10, lambda)
# [1] 0.1184644