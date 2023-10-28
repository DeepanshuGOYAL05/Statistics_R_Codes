# Load the class library (if not already loaded)
library(class)

# Create a sample dataset (you can replace this with your own dataset)
# Example: Iris dataset
data(iris)
data <- iris

# Split the dataset into training and testing sets
set.seed(123)  # for reproducibility
sample_indices <- sample(1:nrow(data), nrow(data) * 0.7)  # 70% training, 30% testing
train_data <- data[sample_indices, ]
test_data <- data[-sample_indices, ]

# Define the number of neighbors (K)
K <- 3

# Perform KNN classification
predicted_classes <- knn(train = train_data[, -5], test = test_data[, -5], cl = train_data$Species, k = K)

# Evaluate the accuracy of the KNN model
accuracy <- sum(predicted_classes == test_data$Species) / nrow(test_data)
cat("Accuracy:", accuracy, "\n")
