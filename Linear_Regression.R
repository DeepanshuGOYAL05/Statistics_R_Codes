# Import the necessary libraries
import numpy as np
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt

# Generate synthetic data
np.random.seed(0)
X = 2 * np.random.rand(100, 1)  # Independent variable
y = 4 + 3 * X + np.random.randn(100, 1)  # Dependent variable with some noise

# Create a Linear Regression model
model = LinearRegression()

# Fit the model to the data
model.fit(X, y)

# Make predictions
X_new = np.array([[0], [2]])  # New data points to make predictions
y_pred = model.predict(X_new)

# Print the coefficients (slope and intercept)
print("Slope (Coefficient):", model.coef_[0][0])
print("Intercept:", model.intercept_[0])

# Plot the data and regression line
plt.scatter(X, y, label='Data')
plt.plot(X_new, y_pred, 'r-', label='Regression Line')
plt.xlabel('X')
plt.ylabel('y')
plt.legend()
plt.show()
