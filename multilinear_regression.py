# Import the necessary libraries
import numpy as np
from sklearn.linear_model import LinearRegression

# Generate synthetic data
np.random.seed(0)
X = np.random.rand(100, 2)  # Two independent variables
y = 2 * X[:, 0] + 3 * X[:, 1] + np.random.rand(100)  # Dependent variable with some noise

# Create a Linear Regression model
model = LinearRegression()

# Fit the model to the data
model.fit(X, y)

# Print the coefficients (slope and intercept)
print("Coefficients (Slope):", model.coef_)
print("Intercept:", model.intercept_)
print("Code by deepanshu")
