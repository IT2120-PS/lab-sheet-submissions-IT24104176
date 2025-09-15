# Parameters
n <- 50
p <- 0.85

# Probability that at least 47 students passed
prob_47_or_more <- sum(dbinom(47:50, size = n, prob = p))
print(paste("P(X ≥ 47) =", round(prob_47_or_more, 4)))

# Probability of exactly 15 calls
lambda <- 12
prob_15_calls <- dpois(15, lambda)
print(paste("P(X = 15) =", round(prob_15_calls, 4)))
