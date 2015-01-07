## Q1
# from homework example
P_FuM <- .15 # at least one of them
P_F <- .10 # just the father
P_M <- .09 # just the mother
# how likely is it, that both of them are sick?
# rule: P_FuM = P_F + P_M - P_FnM
# therefore: P_FnM = P_F + P_M - P_FuM
# hence: P_FnM = .1 + .09 - .15 = .04
P_FnM <- P_F + P_M - P_FuM
P_FnM

# actual quiz question
P_FuM <- .17 # at least one of them
P_F <- .12 # just the father
P_FnM <- .06 # both of them
# how likely is it that the mother is sick?
# rule: P_FuM = P_F + P_M - P_FnM
# therefore: P_M = -(P_F - P_FnM - P_FuM)
# hence: P_M = -(.12 - .06 - .17) = .11
P_M <- -(P_F - P_FnM - P_FuM)
P_M


## Q2
qunif(.75)


## Q3
# solution (I guess...): p / (1 - p) = Y / X


## Q4
# median must be 0


## Q5
x <- 1:4
p <- x / sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
temp
# long solution
sum(temp["Prob", ] * temp["X", ])
# short solution
sum(x * p)


## Q6
sens = .75
spec = .52
prev = .3
P_pos_D = sens
P_minus_Dc = spec
PD = prev
(P_pos_D * PD) / (P_pos_D * PD + (1 - P_minus_Dc) * (1 - PD))
