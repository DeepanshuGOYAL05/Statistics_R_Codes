library(readr)
library(tidymodels)

# Read the dataset and convert the target variable to a factor
bank_df <- read_csv2("bank-full.csv")
bank_df$y = as.factor(bank_df$y)

# Plot job occupation against the target variable
ggplot(bank_df, aes(job, fill = y)) + geom_bar() + coord_flip()

# Split data into train and test
set.seed(421)
split <- initial_split(bank_df, prop = 0.8, strata = y)
train <- split %>% training()
test <- split %>% testing()

# Train a logistic regression model
model <- logistic_reg(mixture = double(1), penalty = double(1)) %>%
  set_engine("glmnet") %>%
  set_mode("classification") %>%
  fit(y ~ ., data = train)

# Model summary
tidy(model)


# Class Predictions
pred_class <- predict(model,
                      new_data = test,
                      type = "class")

# Class Probabilities
pred_proba <- predict(model,
                      new_data = test,
                      type = "prob")

results <- test %>%
           select(y) %>%
           bind_cols(pred_class, pred_proba)

accuracy(results, truth = y, estimate = .pred_class)



