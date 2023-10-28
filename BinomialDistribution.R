# Probability Mass Function (PMF)
x <- 3
size <- 10
prob <- 0.3
probability <- dbinom(x, size, prob)
cat("P(X =", x, ") =", probability, "\n")

# Cumulative Distribution Function (CDF)
q <- 3
cumulative_probability <- pbinom(q, size, prob)
cat("P(X <=", q, ") =", cumulative_probability, "\n")

# Quantile Function
p <- 0.8
quantile_value <- qbinom(p, size, prob)
cat("Quantile for P(X <=", p, ") =", quantile_value, "\n")

# Random Number Generator
n <- 5
random_samples <- rbinom(n, size, prob)
cat("Random samples:", random_samples, "\n")
