# Train arrives uniformly between 0 and 40 minutes
# Find P(10 ≤ X ≤ 25)

a <- 0
b <- 40
lower <- 10
upper <- 25

prob_uniform <- (upper - lower) / (b - a)
print(paste("Q1: P(10 ≤ X ≤ 25) =", round(prob_uniform, 4)))

### Question 2: Exponential Distribution
# λ = 1/3 → mean = 3 hours
# Find P(X ≤ 2)

lambda <- 1/3
prob_exp <- pexp(2, rate = lambda)
print(paste("Q2: P(X ≤ 2) =", round(prob_exp, 4)))

### Question 3: Normal Distribution
# Mean = 100, SD = 15

# i. P(X > 130)
mean_iq <- 100
sd_iq <- 15
prob_above_130 <- 1 - pnorm(130, mean = mean_iq, sd = sd_iq)
print(paste("Q3.i: P(IQ > 130) =", round(prob_above_130, 4)))

# ii. 95th percentile
iq_95th <- qnorm(0.95, mean = mean_iq, sd = sd_iq)
print(paste("Q3.ii: 95th Percentile IQ =", round(iq_95th, 2)))
