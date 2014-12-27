## Q1
x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")

temp[1, ] * temp[2, ]
# [1] 0.1 0.4 0.9 1.6
sum(temp[1, ] * temp[2, ])
# [1] 3


## Q6
sens = .75
spec = .52
prev = .3
P_pos_D = sens
P_minus_Dc = spec
PD = prev

(P_pos_D * PD) / (P_pos_D * PD + (1 - P_minus_Dc) * (1 - PD))
# [1] 0.4010695