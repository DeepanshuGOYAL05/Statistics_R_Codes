# Exponential Distribution Parameters
rate <- 0.2  # Rate parameter (lambda)

# Probability Density Function (PDF)
pdf <- function(x, rate) {
  if (x < 0) {
    return(0)
  }
  return(rate * exp(-rate * x))
}

# Cumulative Distribution Function (CDF)
cdf <- function(x, rate) {
  if (x < 0) {
    return(0)
  }
  return(1 - exp(-rate * x))
}

# Quantile Function (Percent Point Function)
quantile <- function(p, rate) {
  if (p < 0 || p > 1) {
    cat("Probability p must be between 0 and 1.\n")
    return(NA)
  }
  return(-log(1 - p) / rate)
}

# Random Number Generator
generate_random_samples <- function(n, rate) {
  return(rexp(n, rate))
}

# Example usage
x <- 2.5
pdf_value <- pdf(x, rate)
cat("PDF at x =", x, ":", pdf_value, "\n")

x_cdf <- 2.5
cdf_value <- cdf(x_cdf, rate)
cat("CDF at x <=", x_cdf, ":", cdf_value, "\n")

p <- 0.75
quantile_value <- quantile(p, rate)
cat("Quantile for P(X <=", p, "):", quantile_value, "\n")

n_samples <- 5
random_samples <- generate_random_samples(n_samples, rate)
cat("Random samples:", random_samples, "\n")
