# Probability Mass Function (PMF)
x <- 3
lambda <- 2
probability <- dpois(x, lambda)
cat("P(X =", x, ") =", probability, "\n")

# Cumulative Distribution Function (CDF)
q <- 3
cumulative_probability <- ppois(q, lambda)
cat("P(X <=", q, ") =", cumulative_probability, "\n")

# Quantile Function
p <- 0.8
quantile_value <- qpois(p, lambda)
cat("Quantile for P(X <=", p, ") =", quantile_value, "\n")

# Random Number Generator
n <- 5
random_samples <- rpois(n, lambda)
cat("Random samples:", random_samples, "\n")
